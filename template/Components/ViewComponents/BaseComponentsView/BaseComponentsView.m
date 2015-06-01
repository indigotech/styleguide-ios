//
//  BaseView.m
//  Netshoes
//
//  Created by Indigo on 4/24/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "BaseComponentsView.h"

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
        contentView = [[[NSBundle mainBundle] loadNibNamed:[self nibName] owner:self options:nil] firstObject];
    }
    
    [self addSubview:contentView];
    
    contentView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSDictionary *viewsMapping = @{@"view": contentView};
    NSArray *horizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:nil views:viewsMapping];
    NSArray *verticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:nil views:viewsMapping];
    
    [self addConstraints:horizontalConstraints];
    [self addConstraints:verticalConstraints];
}

/**
 * Method to be overriden in case you need to have an specific nib for a class which has a differente name from 
 * the class name
 */
-(NSString *)nibName {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override the method %@ in a subclass", NSStringFromSelector(_cmd)]
                                 userInfo:nil];}
@end
