//
//  GuideTitleView.m
//  template
//
//  Created by Taqtile on 5/28/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQGuideTitleView.h"

@implementation TAQGuideTitleView
{
    __weak IBOutlet UILabel *_titleLabel;
}

-(void)setTitle:(NSString *)title {
    _titleLabel.text = title;
}
@end
