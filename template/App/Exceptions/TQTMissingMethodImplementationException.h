//
//  TAQMissingMethodImplementationException.h
//  template
//
//  Created by Taqtile on 6/9/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TQTBaseException.h"

@interface TQTMissingMethodImplementationException : TQTBaseException
-(instancetype) initWithSelector:(SEL)selector NS_DESIGNATED_INITIALIZER;
@end
