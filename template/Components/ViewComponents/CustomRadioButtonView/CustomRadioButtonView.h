//
//  CustomRadioButtonView.h
//  template
//
//  Created by Taqtile on 6/2/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "BaseComponentsView.h"

typedef enum : NSUInteger {
    CustomRadioButtonViewStateActive,
    CustomRadioButtonViewStateInactive,
} CustomRadioButtonViewState;

@interface CustomRadioButtonView : BaseComponentsView
@property (nonatomic) BOOL selected;
@property (nonatomic) CustomRadioButtonViewState state;
@end
