//
//  NameTextFieldView.m
//  template
//
//  Created by Taqtile on 6/1/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "NameTextFieldView.h"

@implementation NameTextFieldView

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
    self.fieldNameLabel.text = @"Name";
    self.textField.placeholder = @"Alice";
    self.textFieldButton.titleLabel.text = @"";
    self.captionLabel.text = @"Campo obrigatório";
}

#pragma mark - Override
-(NSString *)nibName {
    return [[CustomTextFieldView class] description];
}

@end
