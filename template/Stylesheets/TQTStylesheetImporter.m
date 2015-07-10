//
//  MainStylesheet.m
//  Netshoes
//
//  Created by Taqtile on 4/23/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TQTStylesheetImporter.h"
#import "TQTStylesheets.h"
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


@implementation TQTStylesheetImporter
+ (void)setupTQTStylesheet {
    TQTStylesheets *sharedInstance = [TQTStylesheets sharedInstance];
    [sharedInstance import:[TQTBaseStylesheet class]];
    [sharedInstance import:[TQTTitleStylesheet class]];
    [sharedInstance import:[TQTButtonStylesheet class]];
    [sharedInstance import:[TQTLabelStylesheet class]];
    [sharedInstance import:[TQTFormTextualElementsStylesheet class]];
    [sharedInstance import:[TQTCaptionStylesheet class]];
    [sharedInstance import:[TQTBodyStylesheet class]];
    [sharedInstance import:[TQTCustomTextFieldViewStylesheet class]];
    [sharedInstance import:[TQTCustomRadioButtonViewStylesheet class]];
    [sharedInstance import:[TQTCustomCheckboxButtonViewStylesheet class]];
    [sharedInstance import:[TQTViewStylesheet class]];
}
@end
