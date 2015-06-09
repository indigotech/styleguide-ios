//
//  TAQInvalidStyleRuleException.m
//  template
//
//  Created by Taqtile on 6/9/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQInvalidStyleRuleException.h"

@implementation TAQInvalidStyleRuleException
-(instancetype) initWithView:(UIView *)view style:(NSString *)style {
    self = [super initWithName: @"TAQInvalidStyleRuleException"
                        reason:[NSString stringWithFormat:@"\n\nEXCEPTION - INVALID STYLE RULE: \nClass: %@\nproperty:%@\nPlease, check if there is a typo on properties\n\n%@", NSStringFromClass([view class]), style, [self stackSymbols]]
                      userInfo:nil];
    return self;
}
@end
