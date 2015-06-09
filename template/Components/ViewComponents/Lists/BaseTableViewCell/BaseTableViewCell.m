//
//  BaseTableViewCell.m
//  template
//
//  Created by Taqtile on 6/3/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "TAQNullCellViewClass.h"
#import "UIView+AttachToSuperview.h"

@interface BaseTableViewCell()

@property (nonatomic, strong, readwrite) UIView *cellView;

@end

@implementation BaseTableViewCell
-(UIView *)cellView {
    UIView *cellView = self.contentView.subviews.firstObject;
    if (!cellView) {
        if (!_cellViewClass) {
            @throw [[TAQNullCellViewClass alloc] init];
        }
        cellView = [[_cellViewClass alloc] initWithFrame:CGRectZero];
        [self.contentView addSubview:cellView];
        [cellView attachToSuperviewUsingConstraints];
    }
    return cellView;
}
@end
