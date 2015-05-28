//
//  GuideTableViewDataModel.m
//  template
//
//  Created by Taqtile on 5/28/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "GuideTableViewDataModel.h"

@interface GuideTableViewDataModel()

@property (strong, nonatomic) NSString *text;
@property (strong, nonatomic) Class nextViewController;

@end

@implementation GuideTableViewDataModel
-(instancetype)initWithText:(NSString *)text class:(Class)class {
    self = [super init];
    if (self) {
        self.text = text;
        self.nextViewController = class;
    }
    return self;
}
@end
