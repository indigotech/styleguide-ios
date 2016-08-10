//
//  MainStylesheet.m
//  
//
//  Created by Taqtile on 4/23/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TQTBaseStylesheet.h"
#import "TQTBodyStylesheet.h"
#import "TQTButtonStylesheet.h"
#import "TQTCaptionStylesheet.h"
#import "TQTLabelStylesheet.h"
#import "TQTStylesheetImporter.h"
#import "TQTStylesheets.h"
#import "TQTTitleStylesheet.h"


@implementation TQTStylesheetImporter
+ (void)setupTQTStylesheet {
    TQTStylesheets *sharedInstance = [TQTStylesheets sharedInstance];
    [sharedInstance import:[TQTBaseStylesheet stylesheet]];
    [sharedInstance import:[TQTTitleStylesheet stylesheet]];
    [sharedInstance import:[TQTButtonStylesheet stylesheet]];
    [sharedInstance import:[TQTLabelStylesheet stylesheet]];
    [sharedInstance import:[TQTCaptionStylesheet stylesheet]];
    [sharedInstance import:[TQTBodyStylesheet stylesheet]];
}
@end
