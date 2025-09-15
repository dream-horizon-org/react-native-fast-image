import React, { forwardRef, memo } from 'react'
import {
    View,
    Image,
    NativeModules,
    StyleSheet,
    FlexStyle,
    LayoutChangeEvent,
    ShadowStyleIOS,
    StyleProp,
    TransformsStyle,
    ImageRequireSource,
    Platform,
    AccessibilityProps,
    ViewProps,
    ColorValue,
    ImageResolvedAssetSource,
    requireNativeComponent,
} from 'react-native'

const isFabricEnabled = (global as any)?.nativeFabricUIManager != null
const isTurboModuleEnabled = (global as any).__turboModuleProxy != null
const FastImageViewModule = isTurboModuleEnabled
    ? require('./NativeFastImageViewModule').default
    : NativeModules.FastImageViewModule

const FastImageView = isFabricEnabled
    ? require('./FastImageViewNativeComponent').default
    : requireNativeComponent('FastImageView')

export type ResizeMode = 'contain' | 'cover' | 'stretch' | 'center'

const resizeMode = {
    contain: 'contain',
    cover: 'cover',
    stretch: 'stretch',
    center: 'center',
} as const

export type Priority = 'low' | 'normal' | 'high'

const priority = {
    low: 'low',
    normal: 'normal',
    high: 'high',
} as const

export type Transition = 'fade' | 'none'

const transition = {
    fade: 'fade',
    none: 'none',
} as const

type Cache = 'immutable' | 'web' | 'cacheOnly'

const cacheControl = {
    // Ignore headers, use uri as cache key, fetch only if not in cache.
    immutable: 'immutable',
    // Respect http headers, no aggressive caching.
    web: 'web',
    // Only load from cache.
    cacheOnly: 'cacheOnly',
} as const

export type Source = {
    uri?: string
    headers?: { [key: string]: string }
    priority?: Priority
    cache?: Cache
}

export interface OnLoadEvent {
    nativeEvent: {
        width: number
        height: number
    }
}

export interface OnProgressEvent {
    nativeEvent: {
        loaded: number
        total: number
    }
}

export interface OnErrorEvent {
    nativeEvent: {
        error: string
    }
}

export interface ImageStyle extends FlexStyle, TransformsStyle, ShadowStyleIOS {
    backfaceVisibility?: 'visible' | 'hidden'
    borderBottomLeftRadius?: number
    borderBottomRightRadius?: number
    backgroundColor?: string
    borderColor?: string
    borderWidth?: number
    borderRadius?: number
    borderTopLeftRadius?: number
    borderTopRightRadius?: number
    overlayColor?: string
    opacity?: number
}

export interface FastImageProps extends AccessibilityProps, ViewProps {
    source?: Source | ImageRequireSource
    defaultSource?: ImageRequireSource
    resizeMode?: ResizeMode
    fallback?: boolean
    transition?: Transition

    onLoadStart?(): void

    onProgress?(event: OnProgressEvent): void

    onLoad?(event: OnLoadEvent): void

    onError?(event: OnErrorEvent): void

    onLoadEnd?(): void

    /**
     * onLayout function
     *
     * Invoked on mount and layout changes with
     *
     * {nativeEvent: { layout: {x, y, width, height}}}.
     */
    onLayout?: (event: LayoutChangeEvent) => void

    /**
     *
     * Style
     */
    style?: StyleProp<ImageStyle>

    /**
     * TintColor
     *
     * If supplied, changes the color of all the non-transparent pixels to the given color.
     */

    tintColor?: ColorValue

    /**
     * A unique identifier for this element to be used in UI Automation testing scripts.
     */
    testID?: string

    /**
     * Render children within the image.
     */
    children?: React.ReactNode
}

const resolveDefaultSource = (
    defaultSource?: ImageRequireSource,
): string | number | null => {
    if (!defaultSource) {
        return null
    }
    if (Platform.OS === 'android') {
        // Android receives a URI string, and resolves into a Drawable using RN's methods.
        const resolved = Image.resolveAssetSource(
            defaultSource as ImageRequireSource,
        )

        if (resolved) {
            return resolved.uri
        }

        return null
    }
    // iOS or other number mapped assets
    // In iOS the number is passed, and bridged automatically into a UIImage
    return defaultSource
}

function FastImageBase({
    source,
    defaultSource,
    tintColor,
    onLoadStart,
    onProgress,
    onLoad,
    onError,
    onLoadEnd,
    style,
    fallback,
    children,
    transition: transitionProp,
    resizeMode: resizeModeProp = 'cover',
    forwardedRef,
    ...props
}: FastImageProps & { forwardedRef: React.Ref<any> }) {
    if (fallback) {
        const cleanedSource = { ...(source as any) }
        delete cleanedSource.cache
        const resolvedSource = Image.resolveAssetSource(cleanedSource)

        return (
            <View style={[styles.imageContainer, style]} ref={forwardedRef}>
                <Image
                    {...props}
                    style={[StyleSheet.absoluteFill, { tintColor }]}
                    source={resolvedSource}
                    defaultSource={defaultSource}
                    onLoadStart={onLoadStart}
                    onProgress={onProgress}
                    onLoad={onLoad as any}
                    onError={onError}
                    onLoadEnd={onLoadEnd}
                    resizeMode={resizeModeProp}
                />
                {children}
            </View>
        )
    }

    // @ts-ignore non-typed property
    const FABRIC_ENABLED = !!global?.nativeFabricUIManager

    // this type differs based on the `source` prop passed
    const resolvedSource = Image.resolveAssetSource(
        source as any,
    ) as ImageResolvedAssetSource & { headers: any }
    // resolvedSource would be frozen, we can't modify it
    let modifiedSource = resolvedSource
    if (
        resolvedSource?.headers &&
        (FABRIC_ENABLED || Platform.OS === 'android')
    ) {
        // we do it like that to trick codegen
        const headersArray: { name: string; value: string }[] = []
        Object.keys(resolvedSource.headers).forEach((key) => {
            headersArray.push({ name: key, value: resolvedSource.headers[key] })
        })
        modifiedSource = { ...resolvedSource, headers: headersArray }
    }
    const resolvedDefaultSource = resolveDefaultSource(defaultSource)
    const resolvedDefaultSourceAsString =
        resolvedDefaultSource !== null ? String(resolvedDefaultSource) : null

    return (
        <View style={[styles.imageContainer, style]} ref={forwardedRef}>
            <FastImageView
                {...props}
                tintColor={tintColor}
                style={StyleSheet.absoluteFill}
                source={modifiedSource}
                defaultSource={resolvedDefaultSourceAsString}
                onFastImageLoadStart={onLoadStart}
                onFastImageProgress={onProgress}
                onFastImageLoad={onLoad}
                onFastImageError={onError}
                onFastImageLoadEnd={onLoadEnd}
                resizeMode={resizeModeProp}
                transition={transitionProp}
            />
            {children}
        </View>
    )
}

const FastImageMemo = memo(FastImageBase)

const FastImageComponent: React.ComponentType<FastImageProps> = forwardRef(
    (props: FastImageProps, ref: React.Ref<any>) => (
        <FastImageMemo forwardedRef={ref} {...props} />
    ),
)

FastImageComponent.displayName = 'FastImage'

export interface FastImageStaticProperties {
    resizeMode: typeof resizeMode
    priority: typeof priority
    cacheControl: typeof cacheControl
    transition: typeof transition
    preload: (sources: Source[]) => void
    clearMemoryCache: () => Promise<void>
    clearDiskCache: () => Promise<void>
}

const FastImage: React.ComponentType<FastImageProps> &
    FastImageStaticProperties = FastImageComponent as any

FastImage.resizeMode = resizeMode

FastImage.cacheControl = cacheControl

FastImage.priority = priority

FastImage.transition = transition

FastImage.preload = (sources: Source[]) => FastImageViewModule.preload(sources)

FastImage.clearMemoryCache = () => FastImageViewModule.clearMemoryCache()

FastImage.clearDiskCache = () => FastImageViewModule.clearDiskCache()

const styles = StyleSheet.create({
    imageContainer: {
        overflow: 'hidden',
    },
})

export default FastImage
