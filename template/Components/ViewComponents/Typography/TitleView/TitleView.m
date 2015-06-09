//
//  TitleView.m
//  template
//
//  Created by Taqtile on 5/20/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TitleView.h"

@implementation TitleView
{
    __weak IBOutlet UILabel *_titleLabel;
}

-(void)setTitle: (NSString *)title {
    _titleLabel.text = title;
}

@end
