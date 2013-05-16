//
//  GXLIBLogin.h
//  library-xz
//
//  Created by Apple on 13-5-16.
//  Copyright (c) 2013年 thephoenixorg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GXLIBLogin : UIViewController
- (IBAction)login_do;
@property (retain, nonatomic) IBOutlet UITextField *username;
- (IBAction)endedit;
@property (retain, nonatomic) IBOutlet UITextField *password;

@end
