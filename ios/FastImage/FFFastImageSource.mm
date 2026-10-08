#import "FFFastImageSource.h"

@implementation FFFastImageSource

- (instancetype)initWithURL:(NSURL *)url
                   priority:(FFFPriority)priority
                    headers:(NSDictionary *)headers
               cacheControl:(FFFCacheControl)cacheControl
{
    self = [super init];
    if (self) {
        _url = url;
        _priority = priority;
        _headers = headers;
        _cacheControl = cacheControl;
    }
    return self;
}

// Fabric rebuilds the source on every updateProps, so equality must be by value:
// a pointer compare reloads (and cancels) the image on each commit.
- (BOOL)isEqual:(id)object
{
    if (self == object) {
        return YES;
    }
    if (![object isKindOfClass:[FFFastImageSource class]]) {
        return NO;
    }
    FFFastImageSource *other = (FFFastImageSource *)object;
    return (_url == other.url || [_url isEqual:other.url]) &&
        _priority == other.priority &&
        _cacheControl == other.cacheControl &&
        (_headers == other.headers || [_headers isEqualToDictionary:other.headers]);
}

- (NSUInteger)hash
{
    return _url.hash ^ (NSUInteger)_priority ^ ((NSUInteger)_cacheControl << 2) ^ _headers.hash;
}

@end
