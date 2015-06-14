//
//  TAQExampleVCTableViewData.h
//  template
//
//  Created by Taqtile on 6/10/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableViewPrimaryHeaderView.h"
#import "ListItemContentChildView.h"
#import "BaseTableViewCell.h"

#define KEY_HEADER_VIEW_SETUP @"headerViewSetup"
#define KEY_HEADER_HEIGHT @"headerHeight"
#define KEY_SECTION_ROWS @"sectionRows"
#define KEY_CONTENT_CHILD_VIEW_SETUP @"contentChildViewSetup"
#define KEY_CELL_HEIGHT @"cellHeight"

typedef UIView * (^HeaderSetupBlock)();
typedef UITableViewCell * (^CellSetupBlock)(BaseTableViewCell *);

/**
 * This class creates an Array which has the tableView data used in the TAQExampleViewController.
 * Add more kinds of Headers/Cell on the method `setupTableViewData`.
 */
@interface TAQExampleVCTableViewData : NSObject
@property (nonatomic) NSMutableArray *tableViewData;
@end
