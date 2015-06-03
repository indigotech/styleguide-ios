//
//  TableViewItemCellContentView.m
//  template
//
//  Created by Taqtile on 6/2/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TableViewItemCellContentView.h"

@implementation TableViewItemCellContentView

-(void)setHighlighted:(BOOL)highlighted {
    self.titleLabel.textColor = [UIColor redColor];
    self.accessoryLabel.tintColor = [UIColor redColor];
    _highlighted = highlighted;
}

@end
