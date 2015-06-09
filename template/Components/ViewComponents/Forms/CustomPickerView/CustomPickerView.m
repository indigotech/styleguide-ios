//
//  CustomPickerView.m
//  template
//
//  Created by Taqtile on 6/1/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "CustomPickerView.h"
#import "FormTextualElementsStylesheet.h"

@implementation CustomPickerView
{
    UIPickerView *_pickerView;
}

#pragma mark - View lifecycle
-(void)awakeFromNib {
    [super awakeFromNib];
    [self setup];
}

-(void)dealloc {
    [_pickerView removeFromSuperview];
    _pickerView = nil;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

-(void)setup {
    self.fieldNameLabel.text = @"Picker";
    NSDictionary *attributes = [FormTextualElementsStylesheet attributedStringAttributes][@"InputPlaceholder"];
    self.textField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Select" attributes:attributes];
    [self.textFieldButton setTitle:@"" forState:UIControlStateNormal];
    self.captionLabel.text = @"";
    [self.textFieldButton setImage:[[UIImage imageNamed:@"ic-textfield_picker"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
    [self.textFieldButton addTarget:self action:@selector(didTouchPickerButton) forControlEvents:UIControlEventTouchUpInside];
    
    _pickerView = [[UIPickerView alloc] init];
    [self.window addSubview:_pickerView];
    
    self.textField.inputView = _pickerView;
}

#pragma mark - Action
-(void)didTouchPickerButton {
    [self.textField becomeFirstResponder];
}

#pragma mark - Override
-(NSString *)nibName {
    return [[CustomTextFieldView class] description];
}

-(void)setState:(CustomTextFieldViewState)state {
    [super setState:state];
    switch (state) {
        case CustomTextFieldViewStateError:
            break;
        case CustomTextFieldViewStateActive:
            break;
        case CustomTextFieldViewStateDefault:
            break;
        case CustomTextFieldViewStateInactive:
            break;
        case CustomTextFieldViewStateHighlight:
            break;
        default:
            break;
    }
}
@end
