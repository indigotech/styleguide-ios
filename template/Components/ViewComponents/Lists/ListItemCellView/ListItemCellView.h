//
//  TableViewItemCellContentView.h
//  template
//
//  Created by Taqtile on 6/2/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "BaseComponentsView.h"

/**
 Component of a list item. It has a title, detail(optional) and accessory(optional) label
 **/
@interface ListItemCellView : BaseComponentsView
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UILabel *accessoryLabel;
@property(nonatomic, getter=isHighlighted) BOOL highlighted;
@end
