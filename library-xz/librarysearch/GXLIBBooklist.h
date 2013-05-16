//
//  GXLIBBooklist.h
//  library-xz
//
//  Created by Apple on 13-5-17.
//  Copyright (c) 2013年 thephoenixorg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GXLIBbooklistCell.h"
@interface GXLIBBooklist : UITableViewController
{
    IBOutlet GXLIBbooklistCell *loadedcell;
    NSArray *data;
}

@end
