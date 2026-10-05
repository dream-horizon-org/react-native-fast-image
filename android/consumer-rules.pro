# ProGuard/R8 rules for apps that use FastImage. The Android Gradle plugin
# applies them to the app's release build (consumerProguardFiles in
# build.gradle), so apps don't need to copy them.

# FastImage's classes: its view manager, native module, Glide module and events.
-keep public class com.dylanvann.fastimage.* {*;}
-keep public class com.dylanvann.fastimage.** {*;}

# Glide creates these modules by reflection: FastImage's AppGlideModule (via
# the GeneratedAppGlideModuleImpl Glide generates) and old-style modules it
# finds in the manifests of its integration libraries (e.g. the OkHttp
# integration's OkHttpGlideModule, which FastImage depends on). Keeping a class
# is not enough: R8's full mode (the default from Android Gradle plugin 8.0)
# removes a constructor that no rule names, and Glide then crashes on startup
# with "Unable to instantiate GlideModule implementation".
-keep public class * implements com.bumptech.glide.module.GlideModule {
  <init>();
}
-keep public class * extends com.bumptech.glide.module.AppGlideModule {
  <init>(...);
}

# Glide's image header types.
-keep public enum com.bumptech.glide.load.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}
