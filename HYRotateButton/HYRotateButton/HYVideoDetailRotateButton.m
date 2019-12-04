
//
//  HYVideoDetailRotateButton.m
//  Vpings
//
//  Created by study on 2017/7/18.
//  Copyright © 2017年 朱玉Vpings. All rights reserved.
//

#import "HYVideoDetailRotateButton.h"

@implementation HYVideoDetailRotateButton


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setImage:[UIImage imageNamed:@"icon_cd"] forState:UIControlStateNormal];
        self.contentMode = UIViewContentModeScaleAspectFill;
        self.userInteractionEnabled = YES;
    }
    return self;
}


#pragma mark ==================== 旋转实现方法
//添加layer上面的动画
- (void)rotateButtonAnimation
{
    CABasicAnimation * rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"]; //让其在z轴旋转
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 ];//旋转角度
    rotationAnimation.duration = 3; //旋转周期
    rotationAnimation.cumulative = YES;//旋转累加角度
    rotationAnimation.repeatCount = 10000;//旋转次数
    [self.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}
//继续layer上面的动画
- (void)resumeLayer:(CALayer*)layer
{
    CFTimeInterval pausedTime = [layer timeOffset];
    layer.speed = 1.0;
    layer.timeOffset = 0.0;
    layer.beginTime = 0.0;
    CFTimeInterval timeSincePause = [layer convertTime:CACurrentMediaTime() fromLayer:nil] - pausedTime;
    layer.beginTime = timeSincePause;
}
//暂停layer上面的动画
- (void)pauseLayer:(CALayer*)layer
{
    CFTimeInterval pausedTime = [layer convertTime:CACurrentMediaTime() fromLayer:nil];
    layer.speed = 0.0;
    layer.timeOffset = pausedTime;
}
//移除layer上面的动画
- (void)rotateButtonRemoveAllAnimations
{
    [self.layer removeAllAnimations];
}


@end
