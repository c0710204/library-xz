//
//  GXLIBLogin.m
//  library-xz
//
//  Created by Apple on 13-5-16.
//  Copyright (c) 2013年 thephoenixorg. All rights reserved.
//

#import "GXLIBLogin.h"
#import "GXLIBBooklist.h"
#import "IBApi_member.h"
@interface GXLIBLogin ()

@end

@implementation GXLIBLogin

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login_do {
    NSDictionary *uinfo=[IBApi_member loginwithUsername:self.username.text
                           Password:self.password.text
                       forurlgetkey:@"http://sslib.thephoenixorg.com/api/api.php?table=member&action=getloginkey_ios_der"
                           urllogin:@"http://sslib.thephoenixorg.com/api/api.php?table=member&action=login_ios&mode=0&info=%@"];
    if (uinfo)
    {
        GXLIBBooklist *list=[[[GXLIBBooklist alloc]initWithNibName:@"GXLIBBooklist" bundle:nil]retain];
        [self presentModalViewController:list animated:YES];
    }
    NSLog(@"u=%@",uinfo);
}
- (void)dealloc {
    [_username release];
    [_password release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setUsername:nil];
    [self setPassword:nil];
    [super viewDidUnload];
}
- (IBAction)endedit {
    [_username resignFirstResponder];
    [_password resignFirstResponder];
}
@end
