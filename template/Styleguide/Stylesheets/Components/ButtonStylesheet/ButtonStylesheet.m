//
//  ButtonStylesheet.m
//  Netshoes
//
//  Created by Taqtile on 4/24/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "ButtonStylesheet.h"
#import "UIImage+ImageWithColor.h"
#import "Colors.h"
#import "Fonts.h"
#import "Stylesheet.h"
#import "Components.h"

@implementation ButtonStylesheet
+ (NSDictionary *)stylesheet {
    return @{
             @"Primary_Button": @{
                     PK_BUTTON_NORMAL_TITLE_COLOR: UICOLOR_FROM_HEX(COLOR_WHITE),
                     PK_BUTTON_HIGHLIGHTED_TITLE_COLOR:UICOLOR_HIGHLIGHTED_FROM_HEX(COLOR_WHITE),
                     PK_BUTTON_NORMAL_BACKGROUND_IMAGE: [UIImage imageWithColor: UICOLOR_FROM_HEX(COLOR_PRIMARY)],
                     PK_BUTTON_HIGHLIGHTED_BACKGROUND_IMAGE: [UIImage imageWithColor:UICOLOR_HIGHLIGHTED_FROM_HEX(COLOR_PRIMARY)],
                     PK_BUTTON_CORNER_RADIUS: @CORNER_RADIUS,
                     PK_BUTTON_MASKS_TO_BOUNDS: [NSNumber numberWithBool:YES],
                     },
             @"Alert_Button": @{
                     PK_BUTTON_NORMAL_TITLE_COLOR: UICOLOR_FROM_HEX(COLOR_WHITE),
                     PK_BUTTON_HIGHLIGHTED_TITLE_COLOR:UICOLOR_HIGHLIGHTED_FROM_HEX(COLOR_WHITE),
                     PK_BUTTON_NORMAL_BACKGROUND_IMAGE: [UIImage imageWithColor: UICOLOR_FROM_HEX(COLOR_ALERT)],
                     PK_BUTTON_HIGHLIGHTED_BACKGROUND_IMAGE: [UIImage imageWithColor:UICOLOR_HIGHLIGHTED_FROM_HEX(COLOR_ALERT)],
                     PK_BUTTON_CORNER_RADIUS: @CORNER_RADIUS,
                     PK_BUTTON_MASKS_TO_BOUNDS: [NSNumber numberWithBool:YES],
                     },
             @"CallToAction_Button": @{
                     PK_BUTTON_NORMAL_TITLE_COLOR: UICOLOR_FROM_HEX(COLOR_WHITE),
                     PK_BUTTON_HIGHLIGHTED_TITLE_COLOR:UICOLOR_HIGHLIGHTED_FROM_HEX(COLOR_WHITE),
                     PK_BUTTON_NORMAL_BACKGROUND_IMAGE: [UIImage imageWithColor: UICOLOR_FROM_HEX(COLOR_CALL_TO_ACTION)],
                     PK_BUTTON_HIGHLIGHTED_BACKGROUND_IMAGE: [UIImage imageWithColor:UICOLOR_HIGHLIGHTED_FROM_HEX(COLOR_CALL_TO_ACTION)],
                     PK_BUTTON_CORNER_RADIUS: @CORNER_RADIUS,
                     PK_BUTTON_MASKS_TO_BOUNDS: [NSNumber numberWithBool:YES],
                     },
             @"Neutral_Button": @{
                     PK_BUTTON_NORMAL_TITLE_COLOR: UICOLOR_FROM_HEX(COLOR_GRAY),
                     PK_BUTTON_HIGHLIGHTED_TITLE_COLOR:UICOLOR_HIGHLIGHTED_FROM_HEX(COLOR_GRAY),
                     PK_BUTTON_BORDER_COLOR: UICOLOR_FROM_HEX(COLOR_GRAY),
                     PK_BUTTON_BORDER_WIDTH: @BORDER_SMALL_WIDTH,
                     PK_BUTTON_CORNER_RADIUS: @CORNER_RADIUS,
                     PK_BUTTON_MASKS_TO_BOUNDS: [NSNumber numberWithBool:YES],
                     PK_BUTTON_NORMAL_BACKGROUND_IMAGE: [UIImage imageWithColor: UICOLOR_FROM_HEX(COLOR_WHITE)],
                     PK_BUTTON_HIGHLIGHTED_BACKGROUND_IMAGE: [UIImage imageWithColor:UICOLOR_HIGHLIGHTED_FROM_HEX(COLOR_WHITE)],
                     },
             @"AlertOutlined_Button": @{
                     PK_BUTTON_NORMAL_TITLE_COLOR: UICOLOR_FROM_HEX(COLOR_ALERT),
                     PK_BUTTON_HIGHLIGHTED_TITLE_COLOR:UICOLOR_HIGHLIGHTED_FROM_HEX(COLOR_ALERT),
                     PK_BUTTON_BORDER_COLOR: UICOLOR_FROM_HEX(COLOR_ALERT),
                     PK_BUTTON_BORDER_WIDTH: @BORDER_SMALL_WIDTH,
                     PK_BUTTON_CORNER_RADIUS: @CORNER_RADIUS,
                     PK_BUTTON_MASKS_TO_BOUNDS: [NSNumber numberWithBool:YES],
                     PK_BUTTON_NORMAL_BACKGROUND_IMAGE: [UIImage imageWithColor: UICOLOR_FROM_HEX(COLOR_WHITE)],
                     PK_BUTTON_HIGHLIGHTED_BACKGROUND_IMAGE: [UIImage imageWithColor:UICOLOR_HIGHLIGHTED_FROM_HEX(COLOR_WHITE)],
                     }
             };
}
@end
