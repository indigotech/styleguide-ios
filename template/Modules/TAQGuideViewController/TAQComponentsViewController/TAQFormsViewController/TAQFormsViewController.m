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
    [self addNameTextfield];
}

- (void)addNameTextfield {
    [self addGuideTitleWithText:@"Name textfield"];
    
    [self addNameTextFieldWithSetup:^(NameTextFieldView *nameTextFieldView){
        [nameTextFieldView setState:CustomTextFieldViewStateDefault];
    }];
    [self addNameTextFieldWithSetup:^(NameTextFieldView *nameTextFieldView){
        [nameTextFieldView.textField setText:@"Bob"];
        [nameTextFieldView setState:CustomTextFieldViewStateHighlight];
    }];
    [self addNameTextFieldWithSetup:^(NameTextFieldView *nameTextFieldView){
        [nameTextFieldView.textField setText:@"Bob"];
        [nameTextFieldView setState:CustomTextFieldViewStateInactive];
    }];
    [self addNameTextFieldWithSetup:^(NameTextFieldView *nameTextFieldView){
        [nameTextFieldView.textField setText:@"Bob"];
        [nameTextFieldView setState:CustomTextFieldViewStateActive];
    }];
    [self addNameTextFieldWithSetup:^(NameTextFieldView *nameTextFieldView){
        [nameTextFieldView.textField setText:@"132n"];
        [nameTextFieldView setState:CustomTextFieldViewStateError];
    }];
}

#pragma mark - Aux methods
- (void)addNameTextFieldWithSetup:(void (^)(NameTextFieldView *nameTextFieldView))setup {
     NameTextFieldView *nameTextFieldView = (NameTextFieldView *)[self addViewWithDefaultMarginsAndClass:[NameTextFieldView class] height:0];
    setup(nameTextFieldView);
}
@end
