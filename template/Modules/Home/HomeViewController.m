//
//  HomeViewController.m
//  template
//
//  Created by Tqt iOS on 5/19/2015.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController
{
    __weak IBOutlet UILabel *_titleLabel;
}

#pragma mark - ViewController lifecyle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
}

#pragma mark - setup
-(void)setup {
    _titleLabel.text = @"My favourite label H2";
}
@end
