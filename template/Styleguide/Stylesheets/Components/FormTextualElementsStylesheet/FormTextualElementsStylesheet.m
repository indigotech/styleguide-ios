//
//  FormTextualElementsStylesheet.m
//  template
//
//  Created by Taqtile on 5/29/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "FormTextualElementsStylesheet.h"
#import "Stylesheet.h"
#import "Fonts.h"
#import "Colors.h"

@implementation FormTextualElementsStylesheet
+ (NSDictionary *)stylesheet {
    return @{
             @"Label_Label": @{
                     PK_LABEL_FONT:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_REGULAR) size:FONT_SIZE_SMALL],
                     PK_LABEL_TEXT_COLOR: UICOLOR_FROM_HEX(COLOR_GRAY_DARKEST),
                     },
             @"InputValue_Label": @{
                     PK_LABEL_FONT:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_REGULAR) size:FONT_SIZE_MEDIUM],
                     PK_LABEL_TEXT_COLOR: UICOLOR_FROM_HEX(COLOR_GRAY_DARKEST),
                     },
             @"InputValue_TextField": @{
                     PK_TEXTFIELD_FONT:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_REGULAR) size:FONT_SIZE_MEDIUM],
                     PK_TEXTFIELD_TINT_COLOR: UICOLOR_FROM_HEX(COLOR_GRAY_DARKEST),
                     },
             @"InputPlaceholder_Label": @{
                     PK_LABEL_FONT:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_LIGHT) size:FONT_SIZE_SMALL],
                     PK_LABEL_TEXT_COLOR: UICOLOR_FROM_HEX(COLOR_GRAY_LIGHTEST),
                     },
             };
}
@end
