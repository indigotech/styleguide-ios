//
//  MainStylesheet.m
//  Netshoes
//
//  Created by Taqtile on 4/23/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TQTMainStylesheet.h"
#import "TQTBaseStylesheet.h"
#import "TQTTitleStylesheet.h"
#import "TQTButtonStylesheet.h"
#import "TQTWrongClassNameException.h"
#import "TQTFormTextualElementsStylesheet.h"
#import "TQTCaptionStylesheet.h"
#import "TQTBodyStylesheet.h"
#import "TQTCustomTextFieldViewStylesheet.h"
#import "TQTLabelStylesheet.h"
#import "TQTCustomRadioButtonViewStylesheet.h"
#import "TQTCustomCheckboxButtonViewStylesheet.h"
#import "TQTViewStylesheet.h"

#define CLASS_SUFFIX @"Stylesheet"

@implementation TQTMainStylesheet
+ (NSDictionary *)stylesheet {
    NSMutableDictionary *mainDictionary = [[NSMutableDictionary alloc] init];
    
    [TQTMainStylesheet importStylesheetClass:[TQTBaseStylesheet class] toMainDictionary:mainDictionary];
    [TQTMainStylesheet importStylesheetClass:[TQTTitleStylesheet class] toMainDictionary:mainDictionary];
    [TQTMainStylesheet importStylesheetClass:[TQTButtonStylesheet class] toMainDictionary:mainDictionary];
    [TQTMainStylesheet importStylesheetClass:[TQTLabelStylesheet class] toMainDictionary:mainDictionary];
    [TQTMainStylesheet importStylesheetClass:[TQTFormTextualElementsStylesheet class] toMainDictionary:mainDictionary];
    [TQTMainStylesheet importStylesheetClass:[TQTCaptionStylesheet class] toMainDictionary:mainDictionary];
    [TQTMainStylesheet importStylesheetClass:[TQTBodyStylesheet class] toMainDictionary:mainDictionary];
    [TQTMainStylesheet importStylesheetClass:[TQTCustomTextFieldViewStylesheet class] toMainDictionary:mainDictionary];
    [TQTMainStylesheet importStylesheetClass:[TQTCustomRadioButtonViewStylesheet class] toMainDictionary:mainDictionary];
    [TQTMainStylesheet importStylesheetClass:[TQTCustomCheckboxButtonViewStylesheet class] toMainDictionary:mainDictionary];
    [TQTMainStylesheet importStylesheetClass:[TQTViewStylesheet class] toMainDictionary:mainDictionary];
    
    return mainDictionary;
}

+ (void)importStylesheetClass:(Class)stylesheetClass toMainDictionary:(NSMutableDictionary *)mainDictionary {
    BOOL const isStylesheetClass = [NSStringFromClass(stylesheetClass) rangeOfString:CLASS_SUFFIX].location == NSNotFound;
    if (isStylesheetClass) {
        @throw [[TQTWrongClassNameException alloc] initWithClass:stylesheetClass];
    } else {
        [mainDictionary addEntriesFromDictionary:[stylesheetClass stylesheet]];
    }
}
@end
