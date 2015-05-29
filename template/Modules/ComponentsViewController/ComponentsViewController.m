//
//  Created by Taqtile on 5/5/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "ComponentsViewController.h"
#import "GuideTitleView.h"
#import "GuideSubtitleView.h"
#import "Components.h"

@implementation ComponentsViewController
{
    __weak IBOutlet UIView *_contentView;
    UIView *_lastAddedView;
}

#pragma mark - main method
// Add your component to this method
// 1. Instantiate your view component using addViewWithClass:height:
// 2. Call a method setup<name_of_component> to setup it. This method should be
//    implemented and the main idea is that it should explain how to configure/
//    fill it with data
-(void)addComponents {
}

#pragma mark - DON'T CHANGE THE FILE BELOW THIS LINE
#pragma mark - Public
-(UIView *)addViewWithClass:(Class)class height:(CGFloat)height {
    UIView *view = [[class alloc] initWithFrame:CGRectMake(0, 0, _contentView.frame.size.width, height)];
    
    [_contentView addSubview:view];
    [self addConstraintsToView:view withHeight:height];
    
    _lastAddedView = view;
    
    return view;
}

#pragma mark - VC lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
    
    _lastAddedView = nil;
    [self addComponents];
    [self addConstraintToLastAddedView];
}

#pragma mark - private
- (void)setup {
    [self setTitle:@"Styleguide"];
    self.navigationController.navigationBar.translucent = NO;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(didTouchCloseButton:)];
}

/**
 * Add constraints to attach view to the last added view. If it is the first view, it will
 * attach it to the root view
 * @param view view you want to attach
 * @param height height constraint for this view. If you don't want to set a height constraint (in case 
 * your view has instrinsic height) then set this param as 0
 */
- (void)addConstraintsToView:(UIView *)view withHeight:(CGFloat)height {
    view.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSDictionary *viewsMapping = _lastAddedView ? @{@"view": view, @"lastAddedView": _lastAddedView} : @{@"view": view};
    NSArray *horizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:nil views:viewsMapping];
    NSArray *verticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat: height ? [NSString stringWithFormat:_lastAddedView ? @"V:[lastAddedView]-[view(==%f)]" : @"V:|[view(==%f)]", height] : _lastAddedView ? @"V:[lastAddedView]-[view]" : @"V:|[view]" options:0 metrics:nil views:viewsMapping];
    
    [_contentView addConstraints:horizontalConstraints];
    [_contentView addConstraints:verticalConstraints];
}

-(void)addConstraintToLastAddedView {
    if (_lastAddedView) {
        NSDictionary *viewsMapping = @{@"view": _lastAddedView};
        NSArray *verticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[view]-|"  options:0 metrics:nil views:viewsMapping];
        [_contentView addConstraints:verticalConstraints];
    }
}

#pragma mark - methods to add title/subtitle
-(void)addGuideTitleWithText:(NSString *)title {
    GuideTitleView *guideTitleView = (GuideTitleView *)[self addViewWithClass:[GuideTitleView class] height:0];
    [guideTitleView setTitle:title];
}

-(void)addGuideSubtitleWithText:(NSString *)subtitle {
    GuideSubtitleView *guideSubtitleView = (GuideSubtitleView *)[self addViewWithClass:[GuideSubtitleView class] height:0];
    [guideSubtitleView setSubtitle:subtitle];
}

#pragma mark - Action
- (void)didTouchCloseButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
