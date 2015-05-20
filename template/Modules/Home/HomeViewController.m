//
//  HomeViewController.m
//  template
//
//  Created by Tqt iOS on 5/19/2015.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "HomeViewController.h"
#import "Components.h"

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
    [self setTitle:@"Template"];
    self.navigationController.navigationBar.translucent = NO;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:UICOLOR_FROM_HEX(COLOR_WHITE), NSFontAttributeName:[UIFont fontWithName:NAVIGATION_BAR_FONT size:FONT_SIZE_EXTRA_LARGE]}];
    [self.navigationController.navigationBar setBarTintColor:NAVIGATION_BAR_TINT_COLOR];
    
    _titleLabel.text = @"My favorite label H2";
}
@end
