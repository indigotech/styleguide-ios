//
//  GuideSubtitleView.m
//  template
//
//  Created by Taqtile on 5/28/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQGuideSubtitleView.h"

@implementation TAQGuideSubtitleView
{
    __weak IBOutlet UILabel *_subtitleLabel;
    
}

-(void)setupOnInitWithFrame{}

-(void)setSubtitle:(NSString *)title {
    _subtitleLabel.text = title;
}

@end
