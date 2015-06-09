//
//  BaseView.m
//  Netshoes
//
//  Created by Indigo on 4/24/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "BaseComponentsView.h"
#import "UIView+AttachToSuperview.h"
#import "TAQMissingMethodImplementationException.h"

@implementation BaseComponentsView

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self addContentViewWithConstraints];
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addContentViewWithConstraints];
    }
    return self;
}

-(void) addContentViewWithConstraints
{
    UIView * contentView;
    @try {
        contentView = [[[NSBundle mainBundle] loadNibNamed:[[self class] description] owner:self options:nil] firstObject];
    }
    @catch (NSException *exception) {
        NSString * const cantLoadNibExceptionName = @"NSInternalInconsistencyException";
        if ([exception.name isEqualToString:cantLoadNibExceptionName]) {
            contentView = [[[NSBundle mainBundle] loadNibNamed:[self nibName] owner:self options:nil] firstObject];
        } else {
            @throw exception;
        }
    }
    
    [self addSubview:contentView];
    [contentView attachToSuperviewUsingConstraints];
}

/**
 * Method to be overriden in case you need to have an specific nib for a class which has a differente name from 
 * the class name
 */
-(NSString *)nibName {
    @throw [[TAQMissingMethodImplementationException alloc] initWithSelector:_cmd];
}
@end
