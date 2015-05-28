//
//  GuideViewController.m
//  template
//
//  Created by Taqtile on 5/28/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "GuideViewController.h"
#import "ComponentsViewController.h"

#define CELL_IDENTIFIER @"defaultCellIdentifier"

@interface GuideViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSArray *tableViewData;
@end

@implementation GuideViewController
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
    cell.textLabel.text = self.tableViewData[indexPath.row];
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ComponentsViewController *vc = [[ComponentsViewController alloc] init];
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
        _tableViewData = @[@"Typgraphy", @"Colors", @"Controls", @"Forms", @"Lists", @"Notifications", @"Other components"];
    }
    return _tableViewData;
}
@end
