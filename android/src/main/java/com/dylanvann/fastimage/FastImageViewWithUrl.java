package com.dylanvann.fastimage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;

import androidx.annotation.Nullable;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;

import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.facebook.react.bridge.ReadableMap;
import com.dylanvann.fastimage.events.FastImageErrorEvent;
import com.dylanvann.fastimage.events.FastImageLoadStartEvent;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.UIManagerHelper;
import com.facebook.react.uimanager.events.EventDispatcher;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

import android.os.Build;
import android.util.Log;

class FastImageViewWithUrl extends AppCompatImageView {
    private static final String TAG = "FastImageViewWithUrl";
    private boolean mNeedsReload = false;
    private ReadableMap mSource = null;
    private Drawable mDefaultSource = null;
    private int mBlurRadius = 0;
    private int mBlurRadiusPrevious = 0;
    public GlideUrl glideUrl;
    private String mTransition = "none"; // "none" | "fade"

    public FastImageViewWithUrl(Context context) {
        super(context);
    }

    public void setSource(@Nullable ReadableMap source) {
        mNeedsReload = true;
        mSource = source;
    }

    public void setDefaultSource(@Nullable Drawable source) {
        mNeedsReload = true;
        mDefaultSource = source;
    }

    public void setBlurRadius(@Nullable Integer blurRadius) {
        mNeedsReload = true;
        mBlurRadiusPrevious = mBlurRadius;
        mBlurRadius = blurRadius == null ? 0 : blurRadius;
    }

    public void setTransition(@Nullable String transition) {
        mNeedsReload = true;
        if (transition == null) {
            mTransition = "none";
        } else {
            mTransition = transition;
        }
    }

    private boolean isNullOrEmpty(final String url) {
        return url == null || url.trim().isEmpty();
    }

    @SuppressLint("CheckResult")
    public void onAfterUpdate(
            @NonNull FastImageViewManager manager,
            @Nullable RequestManager requestManager,
            @NonNull Map<String, List<WeakReference<FastImageViewWithUrl>>> viewsForUrlsMap) {
        if (!mNeedsReload)
            return;

        if ((mSource == null ||
                !mSource.hasKey("uri") ||
                isNullOrEmpty(mSource.getString("uri"))) &&
                mDefaultSource == null) {

            // Cancel existing requests.
            clearView(requestManager);

            if (glideUrl != null) {
                FastImageOkHttpProgressGlideModule.forget(glideUrl.toStringUrl());
            }

            // Clear the image.
            setImageDrawable(null);

            ThemedReactContext context = (ThemedReactContext) getContext();
            EventDispatcher dispatcher = UIManagerHelper.getEventDispatcherForReactTag(context, getId());
            int surfaceId = UIManagerHelper.getSurfaceId(this);
            FastImageErrorEvent event = new FastImageErrorEvent(surfaceId, getId(), mSource);
            if (dispatcher != null) {
                dispatcher.dispatchEvent(event);
            }
            return;
        }

        //final GlideUrl glideUrl = FastImageViewConverter.getGlideUrl(view.getContext(), mSource);
        final FastImageSource imageSource = FastImageViewConverter.getImageSource(getContext(), mSource);

        if (imageSource != null && imageSource.getUri().toString().length() == 0) {
            ThemedReactContext context = (ThemedReactContext) getContext();
            EventDispatcher dispatcher = UIManagerHelper.getEventDispatcherForReactTag(context, getId());
            int surfaceId = UIManagerHelper.getSurfaceId(this);
            FastImageErrorEvent event = new FastImageErrorEvent(surfaceId, getId(), mSource);

            if (dispatcher != null) {
                dispatcher.dispatchEvent(event);
            }
            // Cancel existing requests.
            clearView(requestManager);

            if (glideUrl != null) {
                FastImageOkHttpProgressGlideModule.forget(glideUrl.toStringUrl());
            }
            // Clear the image.
            setImageDrawable(null);
            return;
        }

        // `imageSource` may be null and we still continue, if `defaultSource` is not null
        final GlideUrl glideUrl = imageSource == null ? null : imageSource.getGlideUrl();
        final String previousKey = this.glideUrl == null ? null : this.glideUrl.toStringUrl();

        // Cancel existing request.
        this.glideUrl = glideUrl;
        clearView(requestManager);

        String key = glideUrl == null ? null : glideUrl.toStringUrl();

        if (glideUrl != null) {
            FastImageOkHttpProgressGlideModule.expect(key, manager);
            synchronized (viewsForUrlsMap) {
                if (previousKey != null && !previousKey.equals(key)) {
                    List<WeakReference<FastImageViewWithUrl>> previous = viewsForUrlsMap.get(previousKey);
                    if (previous != null) {
                        previous.removeIf(ref -> ref.get() == null || ref.get() == this);
                        if (previous.isEmpty()) viewsForUrlsMap.remove(previousKey);
                    }
                }
                List<WeakReference<FastImageViewWithUrl>> viewsForKey = viewsForUrlsMap.get(key);
                if (viewsForKey == null) {
                    viewsForKey = new CopyOnWriteArrayList<>();
                    viewsForUrlsMap.put(key, viewsForKey);
                }
                viewsForKey.removeIf(ref -> ref.get() == null);
                boolean registered = false;
                for (WeakReference<FastImageViewWithUrl> ref : viewsForKey) {
                    if (ref.get() == this) registered = true;
                }
                if (!registered) viewsForKey.add(new WeakReference<>(this));
            }
        }

        ThemedReactContext context = (ThemedReactContext) getContext();
        if (imageSource != null) {
            // This is an orphan even without a load/loadend when only loading a placeholder
            // This is an orphan event without a load/loadend when only loading a placeholder
            EventDispatcher dispatcher = UIManagerHelper.getEventDispatcherForReactTag(context, getId());
            int surfaceId = UIManagerHelper.getSurfaceId(this);
            FastImageLoadStartEvent event = new FastImageLoadStartEvent(surfaceId, getId());

            if (dispatcher != null) {
                dispatcher.dispatchEvent(event);
            }
        }

        if (requestManager != null) {
            RequestBuilder<? extends Drawable> builder;
            Map<String, Object> builderOptions = new HashMap<>();
            builderOptions.put("view", this);
            builderOptions.put("blurRadius", mBlurRadius);
            builderOptions.put("blurRadiusShouldClean", mBlurRadiusPrevious > 0 && mBlurRadius <= 0);

            try {
                builder = requestManager
                        .load(imageSource == null ? null : imageSource.getSourceForLoad())
                        .apply(FastImageViewConverter
                                .getOptions(context, imageSource, mSource, builderOptions)
                                .placeholder(mDefaultSource) // show until loaded
                                .fallback(mDefaultSource)); // null will not be treated as error

                if (key != null) {
                    builder.listener(new FastImageRequestListener(key));
                }

                if ("fade".equals(mTransition)) {
                    builder = builder.transition(DrawableTransitionOptions.withCrossFade());
                }

                builder.into(this);
            } catch (Exception e) {
                Log.e(TAG, String.format("Error detecting image type for URI: %s. Exception: %s",
                imageSource != null ? imageSource.getUri().toString() : "null", e.getMessage()), e);
            }
        }
    }

    public void clearView(@Nullable RequestManager requestManager) {
        if (requestManager != null && getTag() != null && getTag() instanceof Request) {
            requestManager.clear(this);
        }
    }
}
