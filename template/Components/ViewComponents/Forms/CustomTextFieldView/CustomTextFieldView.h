//
//  CustomTextFieldView.h
//  template
//
//  Created by Taqtile on 6/1/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "BaseComponentsView.h"

typedef enum : NSUInteger {
    CustomTextFieldViewStateDefault,
    CustomTextFieldViewStateActive,
    CustomTextFieldViewStateInactive,
    CustomTextFieldViewStateError,
    CustomTextFieldViewStateHighlight,
} CustomTextFieldViewState;

@interface CustomTextFieldView : BaseComponentsView

@end

/**
 * Implementation of a textfield
 * New kinds of textfield should inherit from this class. 
 * This is useful to set new label, placeholder, error messages or
 * other behaviour
 */
@interface CustomTextFieldView()
@property (weak, nonatomic) IBOutlet UILabel *fieldNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *textFieldButton;
@property (weak, nonatomic) IBOutlet UILabel *captionLabel;
@property (weak, nonatomic) IBOutlet UIView *textFieldContainerView;
-(void)setState:(CustomTextFieldViewState)state;
@end
