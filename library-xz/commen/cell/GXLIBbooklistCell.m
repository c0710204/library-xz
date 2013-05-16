//
//  GXLIBbooklistCell.m
//  library-xz
//
//  Created by Apple on 13-5-17.
//  Copyright (c) 2013年 thephoenixorg. All rights reserved.
//

#import "GXLIBbooklistCell.h"

@implementation GXLIBbooklistCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        NSLog(@"cell init");
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
   
    // Configure the view for the selected state
}

- (void)dealloc {
    [_bookpic release];
    [_title release];
    [_author release];
    [_published release];
    [_ISBN release];
    [super dealloc];
}
@end
