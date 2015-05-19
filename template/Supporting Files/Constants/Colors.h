//
//  Colors.h
//  template
//
//  Created by Taqtile on 5/19/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

// This file is used to set constants for colors. Each color constant
// should be defined in the hexadecimal format
//
// ex:
// #define COLOR_SWATCH_PRIMARY_COLOR             0x5B2B85

// To get a UIColor in your code, use the macro UICOLOR_FROM_HEXA or
// UICOLOR_FROM_HEX
// ex:
// myView.backgroundColor = UICOLOR_FROM_HEX(COLOR_SWATCH_PRIMARY_COLOR);

#ifndef template_Colors_h
#define template_Colors_h

#define UICOLOR_FROM_HEXA(hexValue,a)                                  \
    [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 \
                    green:((float)((hexValue & 0xFF00) >> 8))/255.0    \
                     blue:((float)(hexValue & 0xFF))/255.0 alpha:a]
#define UICOLOR_FROM_HEX(hexValue) (UICOLOR_FROM_HEXA(hexValue, 1))

#endif
