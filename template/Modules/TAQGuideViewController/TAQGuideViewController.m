//
//  GuideViewController.m
//  template
//
//  Created by Taqtile on 5/28/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TAQGuideViewController.h"
#import "TAQGuideTableViewDataModel.h"
#import "TAQComponentsViewController.h"
#import "TAQTypographyViewController.h"
#import "TAQColorSwatchesViewController.h"
#import "TAQControlsViewController.h"
#import "TAQFormsViewController.h"

#define CELL_IDENTIFIER @"defaultCellIdentifier"

@interface TAQGuideViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSArray *tableViewData;
@end

@implementation TAQGuideViewController
{
    __weak IBOutlet UITableView *_tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
}

#pragma mark - setup
- (void)setup {
    [self setTitle:@"Styleguide"];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(didTouchCloseButton:)];
    
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CELL_IDENTIFIER];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self removeExtraSeparatorsFromTableView:_tableView];
}

#pragma mark - Action
- (void)didTouchCloseButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tableViewData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = ((TAQGuideTableViewDataModel *)self.tableViewData[indexPath.row]).text;
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *vc = [[((TAQGuideTableViewDataModel *)self.tableViewData[indexPath.row]).nextViewController alloc] initWithNibName:@"ComponentsViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
    [_tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - Private methods
- (void)removeExtraSeparatorsFromTableView:(UITableView *)tableView {
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

#pragma mark - getter
-(NSArray *)tableViewData {
    if (!_tableViewData) {
        
        _tableViewData = @[
                            [[TAQGuideTableViewDataModel alloc] initWithText:@"Typography" class:[TAQTypographyViewController class]],
                            [[TAQGuideTableViewDataModel alloc] initWithText:@"Colors" class:[TAQColorSwatchesViewController class]],
                            [[TAQGuideTableViewDataModel alloc] initWithText:@"Controls" class:[TAQControlsViewController class]],
                            [[TAQGuideTableViewDataModel alloc] initWithText:@"Forms" class:[TAQFormsViewController class]],
                            [[TAQGuideTableViewDataModel alloc] initWithText:@"Lists" class:[UIViewController class]],
                            [[TAQGuideTableViewDataModel alloc] initWithText:@"Notifications" class:[UIViewController class]],
                            [[TAQGuideTableViewDataModel alloc] initWithText:@"Other components" class:[TAQComponentsViewController class]],
                            ];
    }
    return _tableViewData;
}
@end
