//
//  TAQListsViewController.m
//  template
//
//  Created by Taqtile on 6/2/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQListsViewController.h"
#import "TAQExamplesTableViewController.h"
#import "TableViewPrimaryHeaderView.h"
#import "ListItemCellView.h"

@interface TAQListsViewController ()

@end

@implementation TAQListsViewController

#pragma mark - VC lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Lists"];
    
    UIBarButtonItem *anotherButton = [[UIBarButtonItem alloc] initWithTitle:@"TableView" style:UIBarButtonItemStylePlain target:self action:@selector(showTableView)];
    self.navigationItem.rightBarButtonItem = anotherButton;
}

#pragma mark - overriden method
- (void)addComponents {
    [self addGuideTitleWithText:@"1. TableVIew"];
    
    [self addGuideSubtitleWithText:@"1.1 Header (TableViewPrimaryHeaderView)"];
    
    TableViewPrimaryHeaderView *tableViewPrimaryHeaderView = (TableViewPrimaryHeaderView *)[self addViewWithClass:[TableViewPrimaryHeaderView class] height:0];
    tableViewPrimaryHeaderView.titleLabel.text = @"H3 SECTION HEADER";
    
    [self addGuideSubtitleWithText:@"1.2 Cell content view (TableViewItemCellContentView)"];
    
    ListItemCellView *cellWithoutDetail = (ListItemCellView *)[self addViewWithClass:[ListItemCellView class] height:43];
    cellWithoutDetail.titleLabel.text = @"H4 - WITHOUT DETAIL";
    cellWithoutDetail.accessoryLabel.text = @"Custom Label";
    
    ListItemCellView *cellWithDetail = (ListItemCellView *)[self addViewWithClass:[ListItemCellView class] height:70];
    cellWithDetail.titleLabel.text = @"H4 - LIST ITEM WITH";
    cellWithDetail.detailLabel.text = @"H4Sub - DETAIL";
    cellWithDetail.accessoryLabel.text = @"Custom Label";
}

#pragma mark - Action
-(void)showTableView {
    [self.navigationController pushViewController:[[TAQExamplesTableViewController alloc] init] animated:YES];
}

@end
