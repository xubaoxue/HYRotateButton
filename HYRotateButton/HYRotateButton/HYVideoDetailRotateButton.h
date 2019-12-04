//
//  HYVideoDetailRotateButton.h
//  Vpings
//
//  Created by study on 2017/7/18.
//  Copyright © 2017年 朱玉Vpings. All rights reserved.
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
