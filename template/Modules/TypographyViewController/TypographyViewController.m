//
//  TypographyViewController.m
//  template
//
//  Created by Taqtile on 5/28/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TypographyViewController.h"
#import "Fonts.h"
#import "UIViewAttributes.h"
#import "GuideTitleView.h"
#import "GuideSubtitleView.h"

@interface TypographyViewController ()

@end

@implementation TypographyViewController

#pragma mark - overriden method
- (void)addComponents {
    // GENERAL RULES
    [self addGuideTitleWithText:@"1.1 GENERAL RULES"];
    
    // FONT FAMILY
    [self addGuideSubtitleWithText:@"1.1.1 FONT FAMILY"];
    
    [self addLabelWithText:[NSString stringWithFormat:@"Primary font - %@", FONT_FAMILY_PRIMARY]
                      font:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_REGULAR) size:FONT_SIZE_MEDIUM]];
    [self addLabelWithText:[NSString stringWithFormat:@"Secondary font - %@", FONT_FAMILY_PRIMARY]
                      font:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_SECONDARY, FONT_WEIGHT_REGULAR) size:FONT_SIZE_MEDIUM]];
    
    
    // SIZES
    [self addGuideSubtitleWithText:@"1.1.2 SIZES"];
    
    [self addLabelWithText:[NSString stringWithFormat:@"EXTRA LARGE (XL): %d", FONT_SIZE_EXTRA_LARGE]
                      font:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_REGULAR) size:FONT_SIZE_MEDIUM]];
    [self addLabelWithText:[NSString stringWithFormat:@"LARGE (XL): %d", FONT_SIZE_LARGE]
                      font:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_REGULAR) size:FONT_SIZE_LARGE]];
    [self addLabelWithText:[NSString stringWithFormat:@"MEDIUM (M): %d", FONT_SIZE_MEDIUM]
                      font:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_REGULAR) size:FONT_SIZE_MEDIUM]];
    [self addLabelWithText:[NSString stringWithFormat:@"SMALL (S): %d", FONT_SIZE_SMALL]
                      font:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_REGULAR) size:FONT_SIZE_SMALL]];
    [self addLabelWithText:[NSString stringWithFormat:@"EXTRA SMALL (XS): %d", FONT_SIZE_EXTRA_SMALL]
                      font:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_REGULAR) size:FONT_SIZE_EXTRA_SMALL]];
    
    // WEIGHT
    [self addGuideSubtitleWithText:@"1.1.3 WEIGHT"];
    
    [self addLabelWithText:FONT_WEIGHT_BOLD
                      font:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_BOLD) size:FONT_SIZE_MEDIUM]];
    [self addLabelWithText:FONT_WEIGHT_REGULAR
                      font:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_REGULAR) size:FONT_SIZE_MEDIUM]];
    [self addLabelWithText:FONT_WEIGHT_LIGHT
                      font:[UIFont fontWithName:FONT_NAME(FONT_FAMILY_PRIMARY, FONT_WEIGHT_LIGHT) size:FONT_SIZE_MEDIUM]];
    
    // TEXTUAL ELEMENTS IN FORMS
    [self addGuideTitleWithText:@"1.2 TEXTUAL ELEMENTS IN FORMS"];
    
    [self addGuideSubtitleWithText:@"1.2.1 LABELS"];
    [self addLabelWithText:@"Label - This is a label" style:@"Label_Label"];
    
    [self addGuideSubtitleWithText:@"1.2.2 INPUT VALUES"];
    [self addLabelWithText:@"Input Value - This is an input value." style:@"InputValue_Label"];
    
    [self addGuideSubtitleWithText:@"1.2.3 INPUT PLACEHOLDER"];
    [self addLabelWithText:@"Input Placeholder - This is an input placeholder." style:@"InputPlaceholder_Label"];
    
    // TITLE
    [self addGuideTitleWithText:@"1.3 TITLES"];
    
    [self addLabelWithText:@"H1 - Heading 1" style:@"H1_Label"];
    [self addLabelWithText:@"H2 - Heading 2" style:@"H2_Label"];
    [self addLabelWithText:@"H3 - Heading 3" style:@"H3_Label"];
    [self addLabelWithText:@"H4 - Heading 4" style:@"H4_Label"];
    [self addLabelWithText:@"H4 SUB - Subheading 4" style:@"H4Sub_Label"];
    [self addLabelWithText:@"H5 - Heading 5" style:@"H5_Label"];
    
    // Caption
    [self addGuideTitleWithText:@"1.4 CAPTION"];
    [self addLabelWithText:@"Caption - This is a caption." style:@"Caption_Label"];
    
    // Body
    [self addGuideTitleWithText:@"1.5 BODY"];
    [self addLabelWithText:@"Body - This is a body text." style:@"Body_Label"];
}

#pragma mark - Auxiliar private methods

-(void)addLabelWithText:(NSString *)text font:(UIFont *)font {
    UILabel *label = (UILabel *)[self addViewWithClass:[UILabel class] height:0];
    [label setText:text];
    [label setFont:font];
}

-(void)addLabelWithText:(NSString *)text style:(NSString *)style {
    UILabel *label = (UILabel *)[self addViewWithClass:[UILabel class] height:0];
    [label setText:text];
    [label setValue:style forUndefinedKey:@"stylesheet"];
}
@end
