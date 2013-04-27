//
//  TweetCell.m
//  Micro cliente de Twitter
//
//  Created by Francisco Riquelme on 26-04-13.
//  Copyright (c) 2013 nobleyleal. All rights reserved.
//

#import "TweetCell.h"

@implementation TweetCell
@synthesize userName,userImage,comentTwitter,userTwitter;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
