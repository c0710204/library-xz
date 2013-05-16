//
//  GXLIBAppDelegate.h
//  library-xz
//
//  Created by Apple on 13-5-16.
//  Copyright (c) 2013年 thephoenixorg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GXLIBLogin.h"
@class GXLIBViewController;

@interface GXLIBAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) GXLIBLogin *viewController;

@end
