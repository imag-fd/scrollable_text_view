#import "ScrollableTextViewPlugin.h"
#if __has_include(<scrollable_text_view/scrollable_text_view-Swift.h>)
#import <scrollable_text_view/scrollable_text_view-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "scrollable_text_view-Swift.h"
#endif

@implementation ScrollableTextViewPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftScrollableTextViewPlugin registerWithRegistrar:registrar];
}
@end
