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

#define CLASS_SUFFIX @"Stylesheet"
#define EXCEPTION_WRONG_CLASS_NAME @"WrongClassNameException"

@implementation MainStylesheet
+ (NSDictionary *)stylesheet {
    NSMutableDictionary *mainDictionary = [[NSMutableDictionary alloc] init];
    
    [MainStylesheet importStylesheetClass:[BaseStylesheet class] toMainDictionary:mainDictionary];
    [MainStylesheet importStylesheetClass:[TitleStylesheet class] toMainDictionary:mainDictionary];
    [MainStylesheet importStylesheetClass:[ButtonStylesheet class] toMainDictionary:mainDictionary];
    
    return mainDictionary;
}

+ (void)importStylesheetClass:(Class)stylesheetClass toMainDictionary:(NSMutableDictionary *)mainDictionary {
    if ([NSStringFromClass(stylesheetClass) rangeOfString:CLASS_SUFFIX].location == NSNotFound) {
        @throw [NSException exceptionWithName:EXCEPTION_WRONG_CLASS_NAME reason:[NSString stringWithFormat:@"\n\nEXCEPTION: You can't import the class %@. It should have the suffix 'Stylesheet'. Check if it is really a class that implements the method 'stylesheet' (not a UIView) \n\n%@", NSStringFromClass(stylesheetClass), [NSThread callStackSymbols]] userInfo:nil];
    } else {
        [mainDictionary addEntriesFromDictionary:[stylesheetClass stylesheet]];
    }
}
@end
