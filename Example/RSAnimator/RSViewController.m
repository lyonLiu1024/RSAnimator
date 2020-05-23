//
//  RSViewController.m
//  RSAnimator
//
//  Created by lyonLiu on 05/07/2020.
//  Copyright (c) 2020 lyonLiu. All rights reserved.
//

#import "RSViewController.h"
#import "YSBasePopView.h"
#import <YSAnimator.h>

@interface RSViewController ()

@end

@implementation RSViewController
 
- (IBAction)popAction:(UIButton *)sender
{
    YSBasePopView *view = [[[NSBundle mainBundle] loadNibNamed:@"YSBasePopView" owner:nil options:nil] firstObject]; 
    YSAnimator *animator = [[YSAnimator alloc] init];
    animator.type = sender.tag;
    [view showByAnimator:animator inView:self.view];
//    [view showInView:self.view];
}
@end
