//
//  TAQFormsViewController.m
//  template
//
//  Created by Taqtile on 6/1/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQFormsViewController.h"
#import "NameTextFieldView.h"
#import "CustomPickerView.h"
#import "CustomRadioButtonView.h"
#import "CustomCheckboxButtonView.h"

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
    [self addPickerView];
    [self addRadioButton];
    [self addCheckboxButton];
}

- (void)addNameTextfield {
    [self addGuideTitleWithText:@"Name textfield"];
    
    [self addComponentWithClass:[NameTextFieldView class] setup:^(UIView *componentView){
        [(NameTextFieldView *)componentView setState:CustomTextFieldViewStateDefault];
    }];
    
    [self addComponentWithClass:[NameTextFieldView class] setup:^(UIView *componentView){
        NameTextFieldView *nameTextFieldView = (NameTextFieldView *)componentView;
        [nameTextFieldView.textField setText:@"Bob"];
        [nameTextFieldView setState:CustomTextFieldViewStateHighlight];
    }];
    
    [self addComponentWithClass:[NameTextFieldView class] setup:^(UIView *componentView){
        NameTextFieldView *nameTextFieldView = (NameTextFieldView *)componentView;
        [nameTextFieldView.textField setText:@"Bob"];
        [nameTextFieldView setState:CustomTextFieldViewStateInactive];
    }];
    
    [self addComponentWithClass:[NameTextFieldView class] setup:^(UIView *componentView){
        NameTextFieldView *nameTextFieldView = (NameTextFieldView *)componentView;
        [nameTextFieldView.textField setText:@"Bob"];
        [nameTextFieldView setState:CustomTextFieldViewStateActive];
    }];
    
    [self addComponentWithClass:[NameTextFieldView class] setup:^(UIView *componentView){
        NameTextFieldView *nameTextFieldView = (NameTextFieldView *)componentView;
        [nameTextFieldView.textField setText:@"132n"];
        [nameTextFieldView setState:CustomTextFieldViewStateError];
    }];
}

- (void)addPickerView {
    [self addGuideTitleWithText:@"Picker"];
    
    [self addComponentWithClass:[CustomPickerView class] setup:^(UIView *componentView){
        [(CustomPickerView *)componentView setState:CustomTextFieldViewStateDefault];
    }];
    
    [self addComponentWithClass:[CustomPickerView class] setup:^(UIView *componentView){
        CustomPickerView *customPickerView = (CustomPickerView *)componentView;
        [customPickerView.textField setText:@"Bob"];
        [customPickerView setState:CustomTextFieldViewStateHighlight];
    }];
    
    [self addComponentWithClass:[CustomPickerView class] setup:^(UIView *componentView){
        CustomPickerView *customPickerView = (CustomPickerView *)componentView;
        [customPickerView.textField setText:@"Bob"];
        [customPickerView setState:CustomTextFieldViewStateInactive];
    }];
    
    [self addComponentWithClass:[CustomPickerView class] setup:^(UIView *componentView){
        CustomPickerView *customPickerView = (CustomPickerView *)componentView;
        [customPickerView.textField setText:@"Bob"];
        [customPickerView setState:CustomTextFieldViewStateActive];
    }];
    
    [self addComponentWithClass:[CustomPickerView class] setup:^(UIView *componentView){
        CustomPickerView *customPickerView = (CustomPickerView *)componentView;
        [customPickerView setState:CustomTextFieldViewStateError];
    }];
}

- (void)addRadioButton {
    [self addGuideTitleWithText:@"Radio button"];
    
    [self addComponentWithClass:[CustomRadioButtonView class] setup:nil];
    
    [self addComponentWithClass:[CustomRadioButtonView class] setup:^(UIView *componentView){
        [(CustomRadioButtonView *)componentView setSelected:YES];
    }];
    
    [self addComponentWithClass:[CustomRadioButtonView class] setup:^(UIView *componentView){
        CustomRadioButtonView *customRadioButtonView = (CustomRadioButtonView *)componentView;
        [customRadioButtonView setSelected:NO];
        [customRadioButtonView setState:CustomRadioButtonViewStateInactive];
    }];
    
    [self addComponentWithClass:[CustomRadioButtonView class] setup:^(UIView *componentView){
        CustomRadioButtonView *customRadioButtonView = (CustomRadioButtonView *)componentView;
        [customRadioButtonView setSelected:YES];
        [customRadioButtonView setState:CustomRadioButtonViewStateInactive];
    }];
}

- (void)addCheckboxButton {
    [self addGuideTitleWithText:@"Checkbox button"];
    
    [self addComponentWithClass:[CustomCheckboxButtonView class] setup:nil];
    
    [self addComponentWithClass:[CustomCheckboxButtonView class] setup:^(UIView *componentView){
        [(CustomCheckboxButtonView *)componentView setSelected:YES];
    }];
    
    [self addComponentWithClass:[CustomCheckboxButtonView class] setup:^(UIView *componentView){
        CustomCheckboxButtonView *customRadioButtonView = (CustomCheckboxButtonView *)componentView;
        [customRadioButtonView setSelected:NO];
        [customRadioButtonView setState:CustomCheckboxButtonViewStateInactive];
    }];
    
    [self addComponentWithClass:[CustomCheckboxButtonView class] setup:^(UIView *componentView){
        CustomCheckboxButtonView *customRadioButtonView = (CustomCheckboxButtonView *)componentView;
        [customRadioButtonView setSelected:YES];
        [customRadioButtonView setState:CustomCheckboxButtonViewStateInactive];
    }];
}

#pragma mark - Aux methods
- (void)addComponentWithClass:(Class)class setup:(void (^)(UIView *componentView))setup {
     UIView *componentView = [self addViewWithDefaultMarginsAndClass:class height:0];
    if (setup) setup(componentView);
}
@end