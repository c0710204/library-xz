//
//  GXLIBbooklistCell.h
//  library-xz
//
//  Created by Apple on 13-5-17.
//  Copyright (c) 2013年 thephoenixorg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GXLIBbooklistCell : UITableViewCell

@property (retain, nonatomic) IBOutlet UIImageView *bookpic;
@property (retain, nonatomic) IBOutlet UILabel *title;
@property (retain, nonatomic) IBOutlet UILabel *author;
@property (retain, nonatomic) IBOutlet UILabel *published;
@property (retain, nonatomic) IBOutlet UILabel *ISBN;

@end
