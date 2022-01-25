#import "GetDownloadPathPlugin.h"
#if __has_include(<get_download_path/get_download_path-Swift.h>)
#import <get_download_path/get_download_path-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "get_download_path-Swift.h"
#endif

@implementation GetDownloadPathPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGetDownloadPathPlugin registerWithRegistrar:registrar];
}
@end
