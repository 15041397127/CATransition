//
//  ZXTransitionAnimation.m
//  CATransition
//
//  Created by ZhangXu on 16/3/11.
//  Copyright © 2016年 zhangXu. All rights reserved.
//

#import "ZXTransitionAnimation.h"

@implementation ZXTransitionAnimation
+(void)transitionForView:(UIView *)aView
                    type:(ZXTransitionType)type
                 subType:(ZXTransitionSubtype)subType
                duration:(NSTimeInterval)duration{
    
    NSString *animationType = nil;
    NSString *animationSubType = nil;
    
    switch (subType) {
        case ZXTransitionSubtypeFromLeft:
            animationSubType = kCATransitionFromLeft;
            break;
        case ZXTransitionSubtypeFromRight:
            animationSubType = kCATransitionFromRight;
            break;
        case ZXTransitionSubtypeFromTop:
            animationSubType = kCATransitionFromTop;
            break;
        case ZXTransitionSubtypeFromBottom:
            animationSubType = kCATransitionFromBottom;
        default:
            break;
    }
    
    switch (type) {
        case ZXTransitionFade:{
            animationType = kCATransitionFade;
            break;
        }

        case ZXTransitionPush:{
            animationType = kCATransitionPush;
            break;
        }

        case ZXTransitionReveal:{
            animationType = kCATransitionReveal;
            break;
        }

        case ZXTransitionMoveIn:{
            animationType = kCATransitionMoveIn;
            break;
        }

        case ZXTransitionCube:{
            animationType = @"cube";
            break;
        }
        case ZXTransitionSuckEffect:{
            animationType = @"suckEffect";
            break;
        }
        case ZXTransitionRippleEffect:{
            animationType = @"rippleEffect";
            break;
        }
        case ZXTransitionPageCurl:{
            animationType =@"pageCurl";
            break;
        }
        case ZXTransitionPageUnCurl:{
            animationType = @"pageUnCurl";
            break;
        }
        case ZXTransitionCameraOpen:{
            animationType =@"cameraIrisHollowOpen";
            break;
        }
        case ZXTransitionCameraClose: {
            animationType = @"cameraIrisHollowClose";
            break;
        }
        case ZXTransitionCurlDown:{
            [self animationForView:aView type:UIViewAnimationTransitionCurlDown duration:duration];
            break;
        }
        case ZXTransitionCurlUp:{
            [self animationForView:aView type:UIViewAnimationTransitionCurlUp duration:duration];
            break;
        }
        case ZXTransitionFlipFromLeft:{
            [self animationForView:aView type:UIViewAnimationTransitionFlipFromLeft duration:duration];
            break;
        }
        case ZXTransitionFlipFromRight:{
            [self animationForView:aView type:UIViewAnimationTransitionFlipFromRight duration:duration];
            break;
        }
        case ZXTransitionOglFlip:
            animationType = @"oglFlip";
            break;
        default:{
            break;
        }
    }
    if (animationType != nil) {
        CATransition *animation = [CATransition animation];
        animation.duration = duration;
        animation.type = animationType;
        if (animationSubType != nil) {
            
            animation.subtype =animationSubType;
        }
        animation.timingFunction = UIViewAnimationOptionCurveEaseInOut;
        [aView.layer addAnimation:animation forKey:@"animation"];
    
    }
}



+(void)animationForView:(UIView *)aView
                   type:(UIViewAnimationTransition)type
               duration:(NSTimeInterval)duration{
    [UIView animateWithDuration:duration animations:^{
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:type forView:aView cache:YES];
    }];
}

@end
