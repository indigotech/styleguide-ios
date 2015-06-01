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
            [self.fieldNameLabel setValue:@"Label_IsError_Label" forUndefinedKey:@"stylesheet"];
            [self.textFieldContainerView setValue:@"CustomTextFieldView_TextField_IsError_View" forUndefinedKey:@"stylesheet"];
            [self.textField setValue:@"InputValue_IsError_TextField" forUndefinedKey:@"stylesheet"];
            [self.captionLabel setValue:@"Caption_IsError_Label" forUndefinedKey:@"stylesheet"];
             break;
        case CustomTextFieldViewStateActive:
            [self.textFieldButton setImage:[UIImage imageNamed:@"ic-delete-password"] forState:UIControlStateNormal];
            [self defaultSetup];
            break;
        case CustomTextFieldViewStateDefault:
            [self defaultSetup];
            break;
        case CustomTextFieldViewStateInactive:
            [self.fieldNameLabel setValue:@"Label_IsInactive_Label" forUndefinedKey:@"stylesheet"];
            [self.textFieldContainerView setValue:@"CustomTextFieldView_TextField_IsInactive_View" forUndefinedKey:@"stylesheet"];
            [self.textField setValue:@"InputValue_IsInactive_TextField" forUndefinedKey:@"stylesheet"];
            [self.captionLabel setValue:@"Caption_IsInactive_Label" forUndefinedKey:@"stylesheet"];
            break;
        case CustomTextFieldViewStateHighlight:
            [self defaultSetup];
            [self.textFieldButton setImage:[UIImage imageNamed:@"ic-success"] forState:UIControlStateNormal];
            break;
        default:
            break;
    }
}

- (void)defaultSetup {
    [self.fieldNameLabel setValue:@"Label_Label" forUndefinedKey:@"stylesheet"];
    [self.textFieldContainerView setValue:@"CustomTextFieldView_TextField_View" forUndefinedKey:@"stylesheet"];
    [self.textField setValue:@"InputValue_TextField" forUndefinedKey:@"stylesheet"];
    [self.captionLabel setValue:@"Caption_Label" forUndefinedKey:@"stylesheet"];
}


@end
