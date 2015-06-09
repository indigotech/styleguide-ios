//
//  TAQInvalidStyleRuleException.h
//  template
//
//  Created by Taqtile on 6/9/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TAQBaseException.h"
#import <UIKit/UIKit.h>

@interface TAQInvalidStyleRuleException : TAQBaseException
-(instancetype) initWithView:(UIView *)view style:(NSString *)style;
@end
