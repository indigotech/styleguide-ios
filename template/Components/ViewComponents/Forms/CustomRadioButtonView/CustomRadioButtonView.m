//
//  CustomRadioButtonView.m
//  template
//
//  Created by Taqtile on 6/2/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "CustomRadioButtonView.h"

@implementation CustomRadioButtonView
{
    __weak IBOutlet UIButton *_button;
}

#pragma mark - View lifecycle
-(void)setupOnAwakeFromNib {
    [self initialSetup];
}

-(void)setupOnInitWithFrame {
    [self initialSetup];
}

-(void)initialSetup {
    self.state = CustomRadioButtonViewStateActive;
    self.selected = NO;
}

#pragma mark - setter
-(void)setState:(CustomRadioButtonViewState)state {
    _state = state;
    switch (state) {
        case CustomRadioButtonViewStateActive:
            [_button setEnabled:YES];
            break;
        case CustomRadioButtonViewStateInactive:
            [_button setEnabled:NO];
            break;
        default:
            break;
    }
}

-(void)setSelected:(BOOL)selected {
    _selected = selected;
    [_button setTitle:@"Input value" forState:UIControlStateNormal];
    [_button setImage:[[UIImage imageNamed:selected ? @"ic-radio_is_selected" : @"ic-radio"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
}
@end
