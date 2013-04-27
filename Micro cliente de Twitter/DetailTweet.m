//
//  DetailTweet.m
//  Micro cliente de Twitter
//
//  Created by Francisco Riquelme on 26-04-13.
//  Copyright (c) 2013 nobleyleal. All rights reserved.
//

#import "DetailTweet.h"

@interface DetailTweet ()

@end

@implementation DetailTweet
@synthesize userTwittertoDefine,userNametoDefine,userImagetoDefine,userImagePathtoDefine,comentTwittertoDefine,userBackgroundtoDefine,userBackgroudPathtoDefine;

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
    [self.navigationController.navigationBar setHidden:NO];
    border.layer.cornerRadius=5.0f;
    userName.text=userNametoDefine;
    userName.layer.cornerRadius=5.0f;
    userTwitter.text=userTwittertoDefine;
    userTwitter.layer.cornerRadius=5.0f;
    comentTwitter.text=comentTwittertoDefine;
    comentTwitter.layer.cornerRadius=5.0f;
    NSLog(@"%@",userImagePathtoDefine);
    CGImageRef cgref = [userImagetoDefine CGImage];
    if (userImagetoDefine  == nil && cgref == NULL) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            UIImage *image= [self downloadImge:userImagePathtoDefine];
            
            
            dispatch_async(dispatch_get_main_queue(), ^{
                
                userImage.image=image;
                
            });
        });
    }else{
        userImage.image=userImagetoDefine;
    }
    userImage.layer.cornerRadius=5.0f;
    
    
    cgref = [userBackgroundtoDefine CGImage];
    if (userBackgroundtoDefine  == nil && cgref == NULL) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            UIImage *image= [self downloadImge:userBackgroudPathtoDefine];
            
            
            dispatch_async(dispatch_get_main_queue(), ^{
                
                
                self.view.backgroundColor = [UIColor colorWithPatternImage:image];
                
            });
        });

    }else{
        self.view.backgroundColor = [UIColor colorWithPatternImage:userBackgroundtoDefine];
    }
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)back:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}
-(UIImage*)downloadImge: (NSString*)path{
    UIImage * result;
    
    NSData * data = [NSData dataWithContentsOfURL:[NSURL URLWithString:path]];
    result = [UIImage imageWithData:data];
    
    return result;
}

@end
