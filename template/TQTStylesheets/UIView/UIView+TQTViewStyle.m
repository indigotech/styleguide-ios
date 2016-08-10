//
//  UIView+UIViewStyle.m
//  
//
//  Created by Taqtile on 4/23/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "UIView+TQTViewStyle.h"
#import "TQTStylesheets.h"
#import "TQTStylesheetsProperties.h"
#import "TQTUnknownKeyException.h"

@implementation UIView (TQTViewStyle)

/**
 * This method gets called when you set a User Defined Run Time
 * attribute on your XIB which is not defined.
 *
 * To set a style, you would set a key "stylesheet" with type String
 * and value your style (ex: "H2_Label").
 *
 * @param syle the undefined value
 */
-(void)setStylesheet:(NSString *)style {
    [[TQTStylesheets sharedInstance] setStyle:style forView:self];
}

/**
 * This method always returns an empty screen. Therefore, nowadays it is not possible to get the current applied style
 */
-(NSString *)stylesheet {
    return @"";
}

#pragma mark - Properties
-(UIColor *)borderColor {
    return [UIColor colorWithCGColor:[self.layer borderColor]];
}

-(void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}


@end
