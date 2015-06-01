//
//  CustomTextFieldViewStylesheet.m
//  template
//
//  Created by Taqtile on 6/1/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "CustomTextFieldViewStylesheet.h"
#import "Stylesheet.h"
#import "Colors.h"

@implementation CustomTextFieldViewStylesheet
+ (NSDictionary *)stylesheet {
    return @{
             @"CustomTextFieldView_TextField_View": @{
                     PK_VIEW_BORDER_COLOR: UICOLOR_FROM_HEX(COLOR_GRAY),
                     PK_VIEW_BORDER_WIDTH: @1,
                    },
             @"CustomTextFieldView_TextField": @{
                     PK_TEXTFIELD_BORDER_STYLE:[NSNumber numberWithInteger:UITextBorderStyleNone],
                    },
             };
}
@end
