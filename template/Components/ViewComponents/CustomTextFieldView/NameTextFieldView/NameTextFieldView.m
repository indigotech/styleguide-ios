//
//  NameTextFieldView.m
//  template
//
//  Created by Taqtile on 6/1/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "NameTextFieldView.h"
#import "FormTextualElementsStylesheet.h"

@implementation NameTextFieldView

#pragma mark - View lifecycle
-(void)awakeFromNib {
    [super awakeFromNib];
    [self setup];
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

-(void)setup {
    self.fieldNameLabel.text = @"Nome";
    NSDictionary *attributes = [FormTextualElementsStylesheet attributedStringAttributes][@"InputPlaceholder"];
    self.textField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Alice" attributes:attributes];
    [self.textFieldButton setTitle:@"" forState:UIControlStateNormal];
    self.captionLabel.text = @"Campo obrigatório";
}

#pragma mark - Override
-(NSString *)nibName {
    return [[CustomTextFieldView class] description];
}

-(void)setState:(CustomTextFieldViewState)state {
    [super setState:state];
    switch (state) {
        case CustomTextFieldViewStateError:
            self.captionLabel.text = @"Campo inválido";
            break;
        case CustomTextFieldViewStateActive:
            self.captionLabel.text = @"Campo obrigatório";
            break;
        case CustomTextFieldViewStateDefault:
            self.captionLabel.text = @"Campo obrigatório";
            break;
        case CustomTextFieldViewStateInactive:
            self.captionLabel.text = @"Este campo não pode ser editado";
            break;
        case CustomTextFieldViewStateHighlight:
            break;
        default:
            break;
    }
}
@end
