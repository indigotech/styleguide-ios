//
//  MainStylesheet.m
//  Netshoes
//
//  Created by Taqtile on 4/23/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "MainStylesheet.h"
#import "BaseStylesheet.h"
#import "TitleStylesheet.h"
#import "ButtonStylesheet.h"
#import "TAQWrongClassNameException.h"
#import "FormTextualElementsStylesheet.h"
#import "CaptionStylesheet.h"
#import "BodyStylesheet.h"
#import "CustomTextFieldViewStylesheet.h"
#import "LabelStylesheet.h"

#define CLASS_SUFFIX @"Stylesheet"

@implementation MainStylesheet
+ (NSDictionary *)stylesheet {
    NSMutableDictionary *mainDictionary = [[NSMutableDictionary alloc] init];
    
    [MainStylesheet importStylesheetClass:[BaseStylesheet class] toMainDictionary:mainDictionary];
    [MainStylesheet importStylesheetClass:[TitleStylesheet class] toMainDictionary:mainDictionary];
    [MainStylesheet importStylesheetClass:[ButtonStylesheet class] toMainDictionary:mainDictionary];
    [MainStylesheet importStylesheetClass:[LabelStylesheet class] toMainDictionary:mainDictionary];
    [MainStylesheet importStylesheetClass:[FormTextualElementsStylesheet class] toMainDictionary:mainDictionary];
    [MainStylesheet importStylesheetClass:[CaptionStylesheet class] toMainDictionary:mainDictionary];
    [MainStylesheet importStylesheetClass:[BodyStylesheet class] toMainDictionary:mainDictionary];
    [MainStylesheet importStylesheetClass:[CustomTextFieldViewStylesheet class] toMainDictionary:mainDictionary];
    
    return mainDictionary;
}

+ (void)importStylesheetClass:(Class)stylesheetClass toMainDictionary:(NSMutableDictionary *)mainDictionary {
    BOOL const isStylesheetClass = [NSStringFromClass(stylesheetClass) rangeOfString:CLASS_SUFFIX].location == NSNotFound;
    if (isStylesheetClass) {
        @throw [[TAQWrongClassNameException alloc] initWithClass:stylesheetClass];
    } else {
        [mainDictionary addEntriesFromDictionary:[stylesheetClass stylesheet]];
    }
}
@end
