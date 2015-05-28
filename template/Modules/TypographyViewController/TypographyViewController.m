//
//  TypographyViewController.m
//  template
//
//  Created by Taqtile on 5/28/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TypographyViewController.h"
#import "GuideTitleView.h"
#import "GuideSubtitleView.h"

@interface TypographyViewController ()

@end

@implementation TypographyViewController
{
    __weak IBOutlet GuideTitleView *_generalRulesGuideTitleView;
    __weak IBOutlet GuideSubtitleView *_fontFamilyGuideSubtitleView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_generalRulesGuideTitleView setTitle:@"1.1 GENERAL RULES"];
    [_fontFamilyGuideSubtitleView setSubtitle:@"1.1.1 FONT FAMILY"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
