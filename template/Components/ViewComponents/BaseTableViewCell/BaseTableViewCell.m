//
//  BaseTableViewCell.m
//  template
//
//  Created by Taqtile on 6/3/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "UIView+AttachToSuperview.h"

@interface BaseTableViewCell()

@property (nonatomic, strong, readwrite) UIView *cellView;

@end

@implementation BaseTableViewCell
-(UIView *)cellView {
    UIView *cellView = self.contentView.subviews.firstObject;
    if (!cellView) {
        if (!_cellViewClass) {
            @throw [NSException exceptionWithName:@"TAQNullCellViewClass" reason:[NSString stringWithFormat:@"You should set the cellViewClass before calling this method. \n%@", [NSThread callStackSymbols]] userInfo:nil];
        }
        cellView = [[_cellViewClass alloc] initWithFrame:CGRectZero];
        [self.contentView addSubview:cellView];
        [cellView attachToSuperviewUsingConstraints];
    }
    return cellView;
}
@end
