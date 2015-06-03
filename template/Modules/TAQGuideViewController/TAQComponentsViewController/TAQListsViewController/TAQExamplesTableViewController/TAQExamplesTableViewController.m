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
#import "TableViewItemCellContentView.h"

@interface TAQExamplesTableViewController ()

@end

#define CELL_ID @"UITableViewCell"

@implementation TAQExamplesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.clearsSelectionOnViewWillAppear = NO;
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CELL_ID];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *header;
    switch (section) {
        case 0:
            header = [[TableViewPrimaryHeaderView alloc] init];
            ((TableViewPrimaryHeaderView *)header).titleLabel.text = @"H3 SECTION HEADER";
            break;
        default:
            break;
    }
    return header;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    CGFloat height;
    switch (section) {
        case 0:
            height = 40;
            break;
        default:
            break;
    }
    return height;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID forIndexPath:indexPath];
    
    switch (indexPath.section) {
        case 0:
            switch (indexPath.row) {
                case 0: {
                    TableViewItemCellContentView *contentView = cell.contentView.subviews.firstObject;
                    if (!contentView) {
                        contentView = [[TableViewItemCellContentView alloc] initWithFrame:CGRectZero];
                        [cell.contentView addSubview:contentView];
                        [contentView attachToSuperviewUsingConstraints];
                    }
                    
                    contentView.titleLabel.text = @"WITH";
                    contentView.detailLabel.text = @"DETAIL";
                }
                    break;
                case 1: {
                    TableViewItemCellContentView *contentView = cell.contentView.subviews.firstObject;
                    if (!contentView) {
                        contentView = [[TableViewItemCellContentView alloc] initWithFrame:CGRectZero];
                        [cell.contentView addSubview:contentView];
                        [contentView attachToSuperviewUsingConstraints];
                    }
                    
                    contentView.titleLabel.text = @"WITHOUT DETAIL";
                    contentView.accessoryLabel.text = @"accessory";
                }
                    break;
                default:
                    break;
            }
            break;
            
        default:
            break;
    }
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat height;
    
    switch (indexPath.section) {
        case 0:
            switch (indexPath.row) {
                case 0:
                    height = 70;
                    break;
                case 1:
                    height = 40;
                    break;
                default:
                    break;
            }
            break;
            
        default:
            break;
    }
    
    return height;
}
@end
