//
//  TAQExamplesTableViewController.m
//  template
//
//  Created by Taqtile on 6/3/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQExamplesTableViewController.h"
#import "UIView+AttachToSuperview.h"
#import "TableViewPrimaryHeaderView.h"
#import "ListItemCellView.h"
#import "BaseTableViewCell.h"

@interface TAQExamplesTableViewController ()
@property (nonatomic) NSArray *tableViewInfo;
@end

#define CELL_ID @"UITableViewCell"
#define KEY_HEADER_VIEW @"headerView"
#define KEY_HEADER_HEIGHT @"headerHeight"
#define KEY_SECTION_ROWS @"sectionRows"
#define KEY_ROW_VIEW @"rowView"
#define KEY_ROW_HEIGHT @"rowHeight"
typedef UIView * (^SetupBlock)();
typedef UITableViewCell * (^RowSetupBlock)(BaseTableViewCell *);

@implementation TAQExamplesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.clearsSelectionOnViewWillAppear = NO;
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView registerClass:[BaseTableViewCell class] forCellReuseIdentifier:CELL_ID];
}

#pragma mark - getter 
- (NSArray *)tableViewInfo {
    if (!_tableViewInfo) {
        _tableViewInfo = @[
                           @{KEY_HEADER_VIEW: ^UIView *(){
                               TableViewPrimaryHeaderView *header = [[TableViewPrimaryHeaderView alloc] init];
                               (header).titleLabel.text = @"H3 SECTION HEADER";
                               return header;},
                             KEY_HEADER_HEIGHT: @40,
                             KEY_SECTION_ROWS: @[
                                     @{KEY_ROW_VIEW: ^UIView *(BaseTableViewCell *cell){
                                         [cell setCellViewClass:[ListItemCellView class]];
                                         ListItemCellView *contentChildView = (ListItemCellView *)cell.contentChildView;
                                         
                                         contentChildView.titleLabel.text = @"WITH";
                                         contentChildView.detailLabel.text = @"DETAIL";
                                         return cell;},
                                       KEY_ROW_HEIGHT: @70},
                                     @{KEY_ROW_VIEW: ^UIView *(BaseTableViewCell *cell){
                                         [cell setCellViewClass:[ListItemCellView class]];
                                         ListItemCellView *contentView = (ListItemCellView *)cell.contentChildView;
                                         
                                         contentView.titleLabel.text = @"WITHOUT DETAIL";
                                         contentView.accessoryLabel.text = @"accessory";
                                         return cell;},
                                       KEY_ROW_HEIGHT: @40},
                                     ]
                             },
                           ];
    }
    return _tableViewInfo;
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.tableViewInfo count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [(NSArray *)self.tableViewInfo[section][KEY_SECTION_ROWS] count];
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    SetupBlock headerViewBlock = self.tableViewInfo[section][KEY_HEADER_VIEW];
    return headerViewBlock();
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return [self.tableViewInfo[section][KEY_HEADER_HEIGHT] floatValue];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RowSetupBlock rowViewBlock = self.tableViewInfo[indexPath.section][KEY_SECTION_ROWS][indexPath.row][KEY_ROW_VIEW];
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID forIndexPath:indexPath];
    return rowViewBlock(cell);
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [self.tableViewInfo[indexPath.section][KEY_SECTION_ROWS][indexPath.row][KEY_ROW_HEIGHT] floatValue];
}
@end
