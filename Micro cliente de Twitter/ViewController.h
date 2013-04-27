//
//  ViewController.h
//  Micro cliente de Twitter
//
//  Created by Francisco Riquelme on 26-04-13.
//  Copyright (c) 2013 nobleyleal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TweetCell.h"
#import "DetailTweet.h"
#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <Social/Social.h>


@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    IBOutlet UITableView *table;
    UIActivityIndicatorView *activity;
    UIView *viewActivity;
}
@property (strong, nonatomic) NSMutableArray *dataSource;
@end
