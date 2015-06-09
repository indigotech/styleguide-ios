//
//  TAQUnknownKeyException.m
//  template
//
//  Created by Taqtile on 6/9/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQUnknownKeyException.h"

@implementation TAQUnknownKeyException
-(instancetype) initWithKeyName:(NSString *)key {
    self = [super initWithName: @"TAQUnknownKeyException"
                        reason:[NSString stringWithFormat:@"\n\nEXCEPTION - invalid key on setValue:forUndefinedKey:\nkey: %@\n%@\n", key, [self stackSymbols]]
                      userInfo:nil];
    return self;
}
@end
