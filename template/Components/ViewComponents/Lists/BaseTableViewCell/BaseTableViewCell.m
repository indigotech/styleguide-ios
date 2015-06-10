//
//  BaseTableViewCell.m
//  template
//
//  Created by Taqtile on 6/3/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "TAQNullCellViewClassException.h"
#import "UIView+AttachToSuperview.h"

@interface BaseTableViewCell()

@property (nonatomic, strong, readwrite) UIView *contentChildView; 

@end

@implementation BaseTableViewCell
-(UIView *)contentChildView {
    _contentChildView = self.contentView.subviews.firstObject;
    if (!_contentChildView) {
        if (!self.contentChildViewClass) {
            @throw [[TAQNullCellViewClassException alloc] init];
        }
        _contentChildView = [[self.contentChildViewClass alloc] initWithFrame:CGRectZero];
        [self.contentView addSubview:_contentChildView];
        [_contentChildView attachToSuperviewUsingConstraints];
    }
    return _contentChildView;
}
@end
