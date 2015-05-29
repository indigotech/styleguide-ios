//
//  ColorSwatchesViewController.m
//  template
//
//  Created by Taqtile on 5/29/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQColorSwatchesViewController.h"
#import "Colors.h"

@implementation TAQColorSwatchesViewController
#pragma mark - VC lifecycle
-(void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Colors"];
}

#pragma mark - overriden method
- (void)addComponents {
    [self addPallete];
    [self addGrayscale];
    [self addBlackAndWhite];
}

#pragma mark - private
- (void)addPallete {
    [self addGuideTitleWithText:@"Pallete"];
    
    [self addScalesOfColorHex:COLOR_PRIMARY name:@"Primary"];
    [self addScalesOfColorHex:COLOR_SECONDARY name:@"Secondary"];
    [self addScalesOfColorHex:COLOR_ACCESSORY name:@"Accessory"];
    [self addScalesOfColorHex:COLOR_ALERT name:@"Alert"];
    [self addScalesOfColorHex:COLOR_SUCCESS name:@"Success"];
    [self addScalesOfColorHex:COLOR_CALL_TO_ACTION name:@"Call-to-action"];
}

- (void)addGrayscale {
    [self addGuideTitleWithText:@"Grayscale"];
    
    [self addViewOfColorHex:COLOR_GRAY_DARKEST name:@"darkest-gray"];
    [self addViewOfColorHex:COLOR_GRAY_DARKER name:@"darker-gray"];
    [self addViewOfColorHex:COLOR_GRAY name:@"gray"];
    [self addViewOfColorHex:COLOR_GRAY_LIGHTER name:@"lighter-gray"];
    [self addViewOfColorHex:COLOR_GRAY_LIGHTEST name:@"lightest-gray"];
}

- (void)addBlackAndWhite {
    [self addGuideTitleWithText:@"Black and White"];
    
    [self addViewOfColorHex:COLOR_BLACK name:@"black"];
    [self addViewOfColorHex:COLOR_WHITE name:@"white"];
}

#pragma mark Aux private methods
-(void)addScalesOfColorHex:(int)colorHex name:(NSString *)name {
    [self addLabelWithText:[NSString stringWithFormat:@"%@ - %X", name, colorHex]];
    UIView *rawColor = (UIView *)[self addViewWithClass:[UIView class] height:40];
    [rawColor setBackgroundColor:UICOLOR_FROM_HEX(colorHex)];
    UIView *highlightColor = (UIView *)[self addViewWithClass:[UIView class] height:40];
    [highlightColor setBackgroundColor:UICOLOR_HIGHLIGHTED_FROM_HEX(colorHex)];
    UIView *disabledColor = (UIView *)[self addViewWithClass:[UIView class] height:40];
    [disabledColor setBackgroundColor:UICOLOR_DISABLED_FROM_HEX(colorHex)];
}

-(void)addViewOfColorHex:(int)colorHex name:(NSString *)name {
    [self addLabelWithText:[NSString stringWithFormat:@"%@ - %X", name, colorHex]];
    UIView *rawColor = (UIView *)[self addViewWithClass:[UIView class] height:40];
    [rawColor setBackgroundColor:UICOLOR_FROM_HEX(colorHex)];
}

-(void)addLabelWithText:(NSString *)text {
    UILabel *label = (UILabel *)[self addViewWithClass:[UILabel class] height:0];
    [label setText:text];
    [label setValue:@"Label_Label" forUndefinedKey:@"stylesheet"];
}
@end
