//
//  TAQExampleVCTableViewData.m
//  template
//
//  Created by Taqtile on 6/10/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQExampleVCTableViewData.h"

@implementation TAQExampleVCTableViewData
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupTableViewData];
    }
    return self;
}

#pragma mark - private methods

/**
 * Use this method to setup the table view sections/rows of TAQExampleTableViewController tableView.
 */
- (void)setupTableViewData {
    [self addSectionWithHeight:@40
              headerSetupBlock:^UIView *(){
                  TableViewPrimaryHeaderView *header = [[TableViewPrimaryHeaderView alloc] init];
                  (header).titleLabel.text = @"H3 SECTION HEADER";
                  return header;
              }
     ];
    [self addRowWithHeight:@70
            cellSetupBlock:^UITableViewCell *(BaseTableViewCell *cell){
                [cell setContentChildViewClass:[ListItemCellView class]];
                ListItemCellView *contentChildView = (ListItemCellView *)cell.contentChildView;
                
                contentChildView.titleLabel.text = @"WITH";
                contentChildView.detailLabel.text = @"DETAIL";
                return cell;
            }
     ];
    [self addRowWithHeight:@40
            cellSetupBlock:^UITableViewCell *(BaseTableViewCell *cell){
                [cell setContentChildViewClass:[ListItemCellView class]];
                ListItemCellView *contentView = (ListItemCellView *)cell.contentChildView;
                
                contentView.titleLabel.text = @"WITHOUT DETAIL";
                contentView.accessoryLabel.text = @"accessory";
                return cell;
            }
     ];
}

/**
 * Creates a new section on the table view
 * @param setupBlock block that creates, setups and returns the section Header UIView
 * @param height header height
 */
- (void) addSectionWithHeight:(NSNumber *)height headerSetupBlock:(HeaderSetupBlock)setupBlock  {
    NSMutableDictionary *section = [[NSMutableDictionary alloc] init];
    [section setObject:setupBlock forKey:KEY_HEADER_VIEW_SETUP];
    [section setObject:height forKey:KEY_HEADER_HEIGHT];
    [section setObject:[[NSMutableArray alloc] init] forKey:KEY_SECTION_ROWS];
    
    [self.tableViewData addObject:section];
}

/**
 * Creates a new row and adds it to the last section of the table view
 * @param setupBlock block that creates, setups and returns the row UITableViewCell
 * @param height cell height
 */
- (void) addRowWithHeight:(NSNumber *)height cellSetupBlock:(CellSetupBlock)setupBlock  {
    NSMutableDictionary *row = [[NSMutableDictionary alloc] init];
    [row setObject:height forKey:KEY_CELL_HEIGHT];
    [row setObject:setupBlock forKey:KEY_CELL_VIEW_SETUP];
    
    int const lastSectionIndex = (int)[self.tableViewData count] - 1;
    NSMutableArray * const sectionRowsArray = self.tableViewData[lastSectionIndex][KEY_SECTION_ROWS];
    [sectionRowsArray addObject:row];
}

#pragma mark - getter
- (NSArray *)tableViewData {
    if (!_tableViewData) {
        _tableViewData = [[NSMutableArray alloc] init];
    }
    return _tableViewData;
}
@end
