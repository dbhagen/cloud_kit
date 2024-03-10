#import "FlutterCloudKitPlugin.h"
#if __has_include(<flutter_cloud_kit/flutter_cloud_kit-Swift.h>)
#import <flutter_cloud_kit/flutter_cloud_kit-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_cloud_kit-Swift.h"
#endif

@implementation FlutterCloudKitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterCloudKitPlugin registerWithRegistrar:registrar];
}
@end

// TODO(dbhagen): reference shared iOS/macOS structure: https://github.com/flutter/plugins/tree/38154162878e974b928282e0f280806c8aede52f/packages/in_app_purchase/in_app_purchase_storekit