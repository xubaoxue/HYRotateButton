//
//  HYVideoDetailRotateButton.h
//  HYRotateButton
//
//  Created by 徐保学 on 2019/12/4.
//  Copyright © 2019 徐保学. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYVideoDetailRotateButton : UIButton


//添加layer上面的动画
- (void)rotateButtonAnimation;

//暂停layer上面的动画
- (void)pauseLayer:(CALayer*)layer;

//继续layer上面的动画
- (void)resumeLayer:(CALayer*)layer;

//移除layer上面的动画
- (void)rotateButtonRemoveAllAnimations;


@end
