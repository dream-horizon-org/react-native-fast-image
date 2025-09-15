#import "FFFastImageView.h"
#import <SDWebImage/UIImage+MultiFormat.h>
#import <SDWebImage/UIView+WebCache.h>
#import <SDWebImageAVIFCoder/SDImageAVIFCoder.h>
#import <SDWebImageWebPCoder/SDImageWebPCoder.h>

@interface FFFastImageView ()

@property(nonatomic, assign) BOOL hasSentOnLoadStart;
@property(nonatomic, assign) BOOL hasCompleted;
@property(nonatomic, assign) BOOL hasErrored;
// Whether the latest change of props requires the image to be reloaded
@property(nonatomic, assign) BOOL needsReload;

@property(nonatomic, strong) NSDictionary* onLoadEvent;

@property(nonatomic, strong) NSDictionary *lastErrorEvent;

@end

@implementation FFFastImageView

static NSString * const kFFFastImageDefaultErrorMessage = @"Load failed";


- (void)onLoadEventSend:(UIImage *)image {
    NSDictionary* onLoadEvent = @{
            @"width": [NSNumber numberWithDouble: image.size.width],
            @"height": [NSNumber numberWithDouble: image.size.height]
    };
    #ifdef RCT_NEW_ARCH_ENABLED
        if (_eventEmitter != nullptr) {
            std::dynamic_pointer_cast<const facebook::react::FastImageViewEventEmitter>(_eventEmitter)
                ->onFastImageLoad(facebook::react::FastImageViewEventEmitter::OnFastImageLoad{.width = image.size.width, .height = image.size.height});
          }
    #else
    if (self.onFastImageLoad) {
        self.onFastImageLoad(onLoadEvent);
    }
#endif
}

- (void)onLoadStartEvent {
    #ifdef RCT_NEW_ARCH_ENABLED
        if (_eventEmitter != nullptr) {
            std::dynamic_pointer_cast<const facebook::react::FastImageViewEventEmitter>(_eventEmitter)
            ->onFastImageLoadStart(facebook::react::FastImageViewEventEmitter::OnFastImageLoadStart{});
        }
    #else
        if (self.onFastImageLoadStart) {
            self.onFastImageLoadStart(@{});
            self.hasSentOnLoadStart = YES;
        } else {
            self.hasSentOnLoadStart = NO;
        }
    #endif
}

- (void)onProgressEvent:(NSInteger)receivedSize expectedSize:(NSInteger)expectedSize {
    #ifdef RCT_NEW_ARCH_ENABLED
        if (_eventEmitter != nullptr) {
            std::dynamic_pointer_cast<const facebook::react::FastImageViewEventEmitter>(_eventEmitter)
            ->onFastImageProgress(facebook::react::FastImageViewEventEmitter::OnFastImageProgress{.loaded = static_cast<int>(receivedSize), .total = static_cast<int>(expectedSize)});
        }
    #else
        if (self.onFastImageProgress) {
            self.onFastImageProgress(@{
                @"loaded": @(receivedSize),
                @"total": @(expectedSize)
            });
        }
    #endif
}

- (void)onLoadEndEvent {
    #ifdef RCT_NEW_ARCH_ENABLED
        if (_eventEmitter != nullptr) {
            std::dynamic_pointer_cast<const facebook::react::FastImageViewEventEmitter>(_eventEmitter)
            ->onFastImageLoadEnd(facebook::react::FastImageViewEventEmitter::OnFastImageLoadEnd{});
        }
    #else
    if (self.onFastImageLoadEnd) {
        self.onFastImageLoadEnd(@{});
    }
#endif
}

- (void)onErrorEvent:(NSError *)error {

    NSString *msg = error.localizedDescription ?: kFFFastImageDefaultErrorMessage;
    NSDictionary *event = @{ @"error": msg };
    self.lastErrorEvent = event;

    #ifdef RCT_NEW_ARCH_ENABLED
        if (_eventEmitter != nullptr) {
            std::dynamic_pointer_cast<const facebook::react::FastImageViewEventEmitter>(_eventEmitter)
            ->onFastImageError(facebook::react::FastImageViewEventEmitter::OnFastImageError{.error = static_cast<std::string>([error.localizedDescription UTF8String])});
        }
    #else
        if (self.onFastImageError) {
            self.onFastImageError(@{
                    @"error": error.localizedDescription ?: kFFFastImageDefaultErrorMessage
                }
            );
        }
    #endif
}


- (void)commonInitUtils {
    self.resizeMode = RCTResizeModeCover;
    self.clipsToBounds = YES;
    [[SDImageCodersManager sharedManager] addCoder:[SDImageAVIFCoder sharedCoder]];
    [[SDImageCodersManager sharedManager] addCoder:[SDImageWebPCoder sharedCoder]];
}

- (instancetype)initWithFrame:(CGRect)frame {
//     Called on new arch from FFFastImageComponentView
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInitUtils];
    }
    return self;
}

- (id) init {
//     Called on old arch from FFFastImageViewManager
    self = [super init];
    if (self) {
        [self commonInitUtils];
    }
    return self;
}

- (void) setResizeMode: (RCTResizeMode)resizeMode {
    if (_resizeMode != resizeMode) {
        _resizeMode = resizeMode;
        self.contentMode = (UIViewContentMode) resizeMode;
    }
}

- (void) setOnFastImageLoadEnd: (RCTDirectEventBlock)onFastImageLoadEnd {
    _onFastImageLoadEnd = onFastImageLoadEnd;
    if (self.hasCompleted && _onFastImageLoadEnd) {
        _onFastImageLoadEnd(@{});
    }
}

- (void) setOnFastImageLoad: (RCTDirectEventBlock)onFastImageLoad {
    _onFastImageLoad = onFastImageLoad;
    if (self.hasCompleted && _onFastImageLoad) {
        _onFastImageLoad(self.onLoadEvent);
    }
}

- (void) setOnFastImageError: (RCTDirectEventBlock)onFastImageError {
    _onFastImageError = onFastImageError;
    if (self.hasErrored && _onFastImageError) {
        _onFastImageError(self.lastErrorEvent ?: @{ @"error": kFFFastImageDefaultErrorMessage});
    }
}

- (void) setOnFastImageLoadStart: (RCTDirectEventBlock)onFastImageLoadStart {
    if (_source && !self.hasSentOnLoadStart) {
        _onFastImageLoadStart = onFastImageLoadStart;
        if (onFastImageLoadStart) {
            onFastImageLoadStart(@{});
        }
        self.hasSentOnLoadStart = YES;
    } else {
        _onFastImageLoadStart = onFastImageLoadStart;
        self.hasSentOnLoadStart = NO;
    }
}

- (void) setImageColor: (UIColor*)imageColor {
    if (imageColor != nil) {
        _imageColor = imageColor;
        if (super.image) {
            super.image = [self makeImage: super.image withTint: self.imageColor];
        }
    }
}

- (UIImage*) makeImage: (UIImage*)image withTint: (UIColor*)color {
    UIImage* newImage = [image imageWithRenderingMode: UIImageRenderingModeAlwaysTemplate];
    UIGraphicsImageRenderer *renderer = [[UIGraphicsImageRenderer alloc] initWithSize:image.size];
    newImage = [renderer imageWithActions:^(UIGraphicsImageRendererContext * _Nonnull rendererContext) {
    [color setFill];
    [newImage drawInRect:CGRectMake(0, 0, image.size.width, newImage.size.height)];
    }];
    return newImage;
}

- (void) setImage: (UIImage*)image {
    if (self.imageColor != nil) {
        super.image = [self makeImage: image withTint: self.imageColor];
    } else {
        super.image = image;
    }
}

- (void) sendOnLoad: (UIImage*)image {
    [self onLoadEventSend:image];
}

- (void) setSource: (FFFastImageSource*)source {
    if (_source != source) {
        _source = source;
        _needsReload = YES;
    }
}

- (void) setDefaultSource: (UIImage*)defaultSource {
    if (_defaultSource != defaultSource) {
        _defaultSource = defaultSource;
        _needsReload = YES;
    }
}

- (void) didSetProps: (NSArray<NSString*>*)changedProps {
    if (_needsReload) {
        [self reloadImage];
    }
}

- (void) reloadImage {
    _needsReload = NO;

    if (_source) {
        // Load base64 images.
        NSString* url = [_source.url absoluteString];
        if (url && [url hasPrefix: @"data:image"]) {
            [self onLoadStartEvent];
            // Use SDWebImage API to support external format like WebP images
            UIImage* image = [UIImage sd_imageWithData: [NSData dataWithContentsOfURL: _source.url]];
            [self setImage: image];
            [self onProgressEvent:1 expectedSize:1];
            self.hasCompleted = YES;
            [self sendOnLoad: image];
            [self onLoadEndEvent];
            return;
        }

        // Set headers.
        NSDictionary* headers = _source.headers;
        SDWebImageDownloaderRequestModifier* requestModifier = [SDWebImageDownloaderRequestModifier requestModifierWithBlock: ^NSURLRequest* _Nullable (NSURLRequest* _Nonnull request) {
            NSMutableURLRequest* mutableRequest = [request mutableCopy];
            for (NSString* header in headers) {
                NSString* value = headers[header];
                [mutableRequest setValue: value forHTTPHeaderField: header];
            }
            return [mutableRequest copy];
        }];
        SDWebImageContext* context = @{SDWebImageContextDownloadRequestModifier: requestModifier};

        // Set priority.
        SDWebImageOptions options = SDWebImageRetryFailed | SDWebImageHandleCookies;
        switch (_source.priority) {
            case FFFPriorityLow:
                options |= SDWebImageLowPriority;
                break;
            case FFFPriorityNormal:
                // Priority is normal by default.
                break;
            case FFFPriorityHigh:
                options |= SDWebImageHighPriority;
                break;
        }

        switch (_source.cacheControl) {
            case FFFCacheControlWeb:
                options |= SDWebImageRefreshCached;
                break;
            case FFFCacheControlCacheOnly:
                options |= SDWebImageFromCacheOnly;
                break;
            case FFFCacheControlImmutable:
                break;
        }
        [self onLoadStartEvent];
        self.hasCompleted = NO;
        self.hasErrored = NO;

        [self downloadImage: _source options: options context: context];
    } else if (_defaultSource) {
        [self setImage: _defaultSource];
    }
}

- (void) downloadImage: (FFFastImageSource*)source options: (SDWebImageOptions)options context: (SDWebImageContext*)context {
    __weak FFFastImageView *weakSelf = self; // Always use a weak reference to self in blocks
    // transition: default to none; enable fade if requested
    if (self.transition && [self.transition isEqualToString:@"fade"]) {
        self.sd_imageTransition = SDWebImageTransition.fadeTransition;
    }
    [self sd_setImageWithURL: _source.url
            placeholderImage: _defaultSource
                     options: options
                     context: context
                    progress: ^(NSInteger receivedSize, NSInteger expectedSize, NSURL* _Nullable targetURL) {
        [self onProgressEvent:receivedSize expectedSize:expectedSize];
                    } completed: ^(UIImage* _Nullable image,
                    NSError* _Nullable error,
                    SDImageCacheType cacheType,
                    NSURL* _Nullable imageURL) {
                if (error) {
                    weakSelf.hasErrored = YES;
                    [weakSelf onErrorEvent:error];

                    [weakSelf onLoadEndEvent];
                } else {
                    weakSelf.hasCompleted = YES;
                    [weakSelf sendOnLoad: image];
                    [weakSelf onLoadEndEvent];
                }
            }];
}

- (void) dealloc {
    [self sd_cancelCurrentImageLoad];
}

@end
