#import <Foundation/Foundation.h>

#import "NGLFoundation.h"

NS_ASSUME_NONNULL_BEGIN

/**
 The `NGLAccountManager` object provides a global way to set a Nbmap API access
 token.
 */
NGL_EXPORT
@interface NGLAccountManager : NSObject

#pragma mark Authorizing Access

/**
 The
 <a href="https://docs.nbmap.com/help/glossary/access-token/">Nbmap access token</a>
 used by all instances of `NGLMapView` in the current application.

 Nbmap-hosted vector tiles and styles require an API access token, which you
 can obtain from the
 <a href="https://www.nbmap.com/studio/account/tokens/">Nbmap account page</a>.
 Access tokens associate requests to Nbmap’s vector tile and style APIs with
 your Nbmap account. They also deter other developers from using your styles
 without your permission.

 Setting this property to a value of `nil` has no effect.

 @note You must set the access token before attempting to load any Nbmap-hosted
    style. Therefore, you should generally set it before creating an instance of
    `NGLMapView`. The recommended way to set an access token is to add an entry
    to your application’s Info.plist file with the key `NGLNbmapAccessToken`
    and the type `String`. Alternatively, you may call this method from your
    application delegate’s `-applicationDidFinishLaunching:` method.
 */
@property (class, copy, nullable) NSString *accessToken;

@end

NS_ASSUME_NONNULL_END
