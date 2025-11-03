#import "YUCIResourceBundle.h"

@implementation YUCIResourceBundle

+ (NSBundle *)resourceBundle {
    // For Swift Package Manager, resources are in a separate bundle
    #ifdef SWIFTPM_MODULE_BUNDLE
        return SWIFTPM_MODULE_BUNDLE;
    #else
        // Fallback for other build systems (CocoaPods, manual framework)
        return [NSBundle bundleForClass:[self class]];
    #endif
}

@end
