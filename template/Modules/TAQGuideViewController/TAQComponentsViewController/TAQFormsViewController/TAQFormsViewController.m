//
//  TAQFormsViewController.m
//  template
//
//  Created by Taqtile on 6/1/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQFormsViewController.h"
#import "NameTextFieldView.h"

@interface TAQFormsViewController ()

@end

@implementation TAQFormsViewController

#pragma mark - VC lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Forms"];
}

#pragma mark - overriden method
- (void)addComponents {
    [self addViewWithDefaultMarginsAndClass:[NameTextFieldView class] height:0];
}
@end
