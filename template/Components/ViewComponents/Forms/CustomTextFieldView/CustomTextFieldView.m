//
//  CustomTextFieldView.m
//  template
//
//  Created by Taqtile on 6/1/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "CustomTextFieldView.h"
#import "UIViewAttributes.h"

@implementation CustomTextFieldView

-(void)awakeFromNib {
    [self setState:CustomTextFieldViewStateDefault];
    [self setupOnAwakeFromNib];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setState:CustomTextFieldViewStateDefault];
        [self setupOnInitWithFrame];
    }
    return self;
}

-(void)setState:(CustomTextFieldViewState)state {
    switch (state) {
        case CustomTextFieldViewStateError:
            [self errorStateSetup];
             break;
        case CustomTextFieldViewStateActive:
            [self activeStateSetup];
            break;
        case CustomTextFieldViewStateDefault:
            [self defaultSetup];
            break;
        case CustomTextFieldViewStateInactive:
            [self inactiveStateSetup];
             break;
            break;
        case CustomTextFieldViewStateHighlight:
            [self highlightStateSetup];
            break;
        default:
            break;
    }
}

#pragma mark - state setup methods
- (void)defaultSetup {
    [UIViewAttributes setStyle:@"Label_Label" forView:self.fieldNameLabel];
    [UIViewAttributes setStyle:@"CustomTextFieldView_TextField_View" forView:self.textFieldContainerView];
    [UIViewAttributes setStyle:@"InputValue_TextField" forView:self.textField];
    [UIViewAttributes setStyle:@"CustomTextFieldView_Button" forView:self.textFieldButton];
    [UIViewAttributes setStyle:@"Caption_Label" forView:self.captionLabel];
}

- (void)errorStateSetup {
    [UIViewAttributes setStyle:@"Label_IsError_Label" forView:self.fieldNameLabel];
    [UIViewAttributes setStyle:@"CustomTextFieldView_TextField_IsError_View" forView:self.textFieldContainerView];
    [UIViewAttributes setStyle:@"InputValue_IsError_TextField" forView:self.textField];
    [UIViewAttributes setStyle:@"Caption_IsError_Label" forView:self.captionLabel];
    [UIViewAttributes setStyle:@"CustomTextFieldView_IsError_Button" forView:self.textFieldButton];
}

- (void)activeStateSetup {
    [self.textFieldButton setImage:[UIImage imageNamed:@"ic-textfield_delete"] forState:UIControlStateNormal];
    [self defaultSetup];
}

- (void)inactiveStateSetup {
    [UIViewAttributes setStyle:@"Label_IsInactive_Label" forView:self.fieldNameLabel];
    [UIViewAttributes setStyle:@"CustomTextFieldView_TextField_IsInactive_View" forView:self.textFieldContainerView];
    [UIViewAttributes setStyle:@"InputValue_IsInactive_TextField" forView:self.textField];
    [UIViewAttributes setStyle:@"Caption_IsInactive_Label" forView:self.captionLabel];
    [UIViewAttributes setStyle:@"CustomTextFieldView_IsInactive_Button" forView:self.textFieldButton];
}

- (void)highlightStateSetup {
    [self defaultSetup];
    [self.textFieldButton setImage:[UIImage imageNamed:@"ic-textfield_success"] forState:UIControlStateNormal];
}

@end
