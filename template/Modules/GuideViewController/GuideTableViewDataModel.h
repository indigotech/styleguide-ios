//
//  GuideTableViewDataModel.h
//  template
//
//  Created by Taqtile on 5/28/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GuideTableViewDataModel : NSObject
@property (strong, nonatomic, readonly) NSString *text;
@property (strong, nonatomic, readonly) Class nextViewController;

-(instancetype)initWithText:(NSString *)text class:(Class)class;
@end
