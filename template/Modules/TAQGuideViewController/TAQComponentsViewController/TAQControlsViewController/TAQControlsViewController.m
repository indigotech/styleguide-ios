//
//  TAQControlsViewController.m
//  template
//
//  Created by Taqtile on 5/29/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQControlsViewController.h"
#import "Fonts.h"
#import "Components.h"
#import "UIViewAttributes.h"

@interface TAQControlsViewController ()

@end

@implementation TAQControlsViewController

#pragma mark - VC lifecycle
-(void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Controls"];
}

#pragma mark - overriden method
- (void)addComponents {
    [self addGuideTitleWithText:@"Buttons"];
    
    [self addButtonWithText:@"Primary" style:@"Primary_Button"];
    [self addButtonWithText:@"Alert" style:@"Alert_Button"];
    [self addButtonWithText:@"Call to Action" style:@"CallToAction_Button"];
    [self addButtonWithText:@"Neutral" style:@"Neutral_Button"];
    [self addButtonWithText:@"Alert outlined" style:@"AlertOutlined_Button"];
    [self addButtonWithText:@"Link" style:@"Link_Button"];
}

#pragma mark - aux methods
-(void)addButtonWithText:(NSString *)text style:(NSString *)style {
    UIButton *button = (UIButton *)[self addViewWithClass:[UIButton class] height:34];
    [button setValue:style forUndefinedKey:STYLESHEET_KEYWORD];
    [button setTitle:text forState:UIControlStateNormal];
}

@end
