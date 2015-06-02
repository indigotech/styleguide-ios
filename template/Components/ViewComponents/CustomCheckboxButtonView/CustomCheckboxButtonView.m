//
//  CustomCheckboxButton.m
//  template
//
//  Created by Taqtile on 6/2/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "CustomCheckboxButtonView.h"

@implementation CustomCheckboxButtonView
{
    __weak IBOutlet UIButton *_button;
}

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
    self.state = CustomCheckboxButtonViewStateActive;
    self.selected = NO;
}

#pragma mark - setter
-(void)setState:(CustomCheckboxButtonViewState)state {
    _state = state;
    switch (state) {
        case CustomCheckboxButtonViewStateActive:
            [_button setEnabled:YES];
            break;
        case CustomCheckboxButtonViewStateInactive:
            [_button setEnabled:NO];
            break;
        default:
            break;
    }
}

-(void)setSelected:(BOOL)selected {
    _selected = selected;
    [_button setTitle:@"Input value" forState:UIControlStateNormal];
    [_button setImage:[UIImage imageNamed:selected ? @"ic-checkbox_is_selected" : @"ic-checkbox"] forState:UIControlStateNormal];
}
@end

