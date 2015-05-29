//
//  Created by Taqtile on 5/5/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TAQComponentsViewController : UIViewController
-(UIView *)addViewWithClass:(Class)class height:(CGFloat)height;
-(void)addGuideTitleWithText:(NSString *)title;
-(void)addGuideSubtitleWithText:(NSString *)subtitle;
@end
