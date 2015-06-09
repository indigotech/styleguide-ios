//
//  TAQMissingMethodImplementationException.m
//  template
//
//  Created by Taqtile on 6/9/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQMissingMethodImplementationException.h"

@implementation TAQMissingMethodImplementationException
-(instancetype) initWithSelector:(SEL)selector {
    self = [super initWithName: @"TAQMissingMethodImplementationException"
                        reason:[NSString stringWithFormat:@"You must override the method %@ in a subclass \n", NSStringFromSelector(selector)]
                      userInfo:nil];
    return self;
}
@end
