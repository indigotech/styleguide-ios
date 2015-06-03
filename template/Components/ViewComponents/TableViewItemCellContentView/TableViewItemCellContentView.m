//
//  TableViewItemCellContentView.m
//  template
//
//  Created by Taqtile on 6/2/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "TableViewItemCellContentView.h"

@implementation TableViewItemCellContentView
{
    __weak IBOutlet NSLayoutConstraint *_titleLabelCenterYConstraint;
    __weak IBOutlet NSLayoutConstraint *_titleLabeAlginBottomConstraint;
}

#pragma mark - View Lifecycle
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

-(void)awakeFromNib {
    [super awakeFromNib];
    [self setup];
}

- (void)dealloc
{
    [self unregisterForChangeNotification];
}

-(void)setup {
    [self registerAsObserver];
    self.detailLabel.text = @"";
}

#pragma mark - Key value observing
- (void)registerAsObserver {
    [self.detailLabel addObserver:self forKeyPath:@"text"
                 options:NSKeyValueObservingOptionNew
                 context:NULL];
}

- (void)unregisterForChangeNotification {
    [self.detailLabel removeObserver:self forKeyPath:@"text"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
    
    if ([keyPath isEqual:@"text"]) {
        [self fixConstraintsPriority];
    }
}

- (void)fixConstraintsPriority
{
    if ([self.detailLabel.text isEqualToString:@""]) {
        _titleLabelCenterYConstraint.priority = UILayoutPriorityDefaultHigh;
        _titleLabeAlginBottomConstraint.priority = UILayoutPriorityDefaultLow;
    } else {
        _titleLabelCenterYConstraint.priority = UILayoutPriorityDefaultLow;
        _titleLabeAlginBottomConstraint.priority = UILayoutPriorityDefaultHigh;
    }
}

#pragma mark - setter
/**
 * This method gets called when the cell is highlighted
 */
-(void)setHighlighted:(BOOL)highlighted {
    self.titleLabel.textColor = [UIColor redColor];
    self.accessoryLabel.tintColor = [UIColor redColor];
    _highlighted = highlighted;
}
@end
