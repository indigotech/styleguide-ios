//
//  CustomCheckboxButton.h
//  template
//
//  Created by Taqtile on 6/2/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "BaseComponentsView.h"

typedef enum : NSUInteger {
    CustomCheckboxButtonViewStateActive,
    CustomCheckboxButtonViewStateInactive,
} CustomCheckboxButtonViewState;

/**
 * Implementation of a checkbox using UIButton
 */
@interface CustomCheckboxButtonView : BaseComponentsView
@property (nonatomic) BOOL selected;
@property (nonatomic) CustomCheckboxButtonViewState state;
@end
