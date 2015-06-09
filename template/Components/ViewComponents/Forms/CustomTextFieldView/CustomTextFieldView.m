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
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setState:CustomTextFieldViewStateDefault];
    }
    return self;
}

-(void)setState:(CustomTextFieldViewState)state {
    switch (state) {
        case CustomTextFieldViewStateError:
            [UIViewAttributes setStyle:@"Label_IsError_Label" forView:self.fieldNameLabel];
            [UIViewAttributes setStyle:@"CustomTextFieldView_TextField_IsError_View" forView:self.textFieldContainerView];
            [UIViewAttributes setStyle:@"InputValue_IsError_TextField" forView:self.textField];
            [UIViewAttributes setStyle:@"Caption_IsError_Label" forView:self.captionLabel];
            [UIViewAttributes setStyle:@"CustomTextFieldView_IsError_Button" forView:self.textFieldButton];
             break;
        case CustomTextFieldViewStateActive:
            [self.textFieldButton setImage:[UIImage imageNamed:@"ic-textfield_delete"] forState:UIControlStateNormal];
            [self defaultSetup];
            break;
        case CustomTextFieldViewStateDefault:
            [self defaultSetup];
            break;
        case CustomTextFieldViewStateInactive:
            [UIViewAttributes setStyle:@"Label_IsInactive_Label" forView:self.fieldNameLabel];
            [UIViewAttributes setStyle:@"CustomTextFieldView_TextField_IsInactive_View" forView:self.textFieldContainerView];
            [UIViewAttributes setStyle:@"InputValue_IsInactive_TextField" forView:self.textField];
            [UIViewAttributes setStyle:@"Caption_IsInactive_Label" forView:self.captionLabel];
            [UIViewAttributes setStyle:@"CustomTextFieldView_IsInactive_Button" forView:self.textFieldButton];
             break;
            break;
        case CustomTextFieldViewStateHighlight:
            [self defaultSetup];
            [self.textFieldButton setImage:[UIImage imageNamed:@"ic-textfield_success"] forState:UIControlStateNormal];
            break;
        default:
            break;
    }
}

- (void)defaultSetup {
    [UIViewAttributes setStyle:@"Label_Label" forView:self.fieldNameLabel];
    [UIViewAttributes setStyle:@"CustomTextFieldView_TextField_View" forView:self.textFieldContainerView];
    [UIViewAttributes setStyle:@"InputValue_TextField" forView:self.textField];
    [UIViewAttributes setStyle:@"CustomTextFieldView_Button" forView:self.textFieldButton];
    [UIViewAttributes setStyle:@"Caption_Label" forView:self.captionLabel];
}
@end
