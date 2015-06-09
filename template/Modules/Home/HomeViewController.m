//
//  HomeViewController.m
//  template
//
//  Created by Tqt iOS on 5/19/2015.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "HomeViewController.h"
#import "TitleView.h"
#import "Components.h"

@interface HomeViewController ()

@end

@implementation HomeViewController
{
    __weak IBOutlet TitleView *_titleLabel;
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
    [self.navigationController.navigationBar setBarTintColor:NAVIGATION_BAR_TINT_COLOR];
    
    NSDictionary * const titleAttributes = @{NSForegroundColorAttributeName:UICOLOR_FROM_HEX(COLOR_WHITE), NSFontAttributeName:[UIFont fontWithName:NAVIGATION_BAR_FONT size:FONT_SIZE_EXTRA_LARGE]};
    [self.navigationController.navigationBar setTitleTextAttributes:titleAttributes];
    
    [_titleLabel setTitle:@"H2 - Heading 2"];
}
@end
