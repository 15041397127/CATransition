//
//  ZXTransitionAnimation.h
//  CATransition
//
//  Created by ZhangXu on 16/3/11.
//  Copyright © 2016年 zhangXu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,ZXTransitionType){
    
    ZXTransitionFade = 1,     // 淡入淡出
    ZXTransitionPush,         // 推进效果
    ZXTransitionReveal,       // 揭开效果
    ZXTransitionMoveIn,       // 慢慢进入并覆盖效果
    ZXTransitionCube,         // 立体翻转效果
    ZXTransitionSuckEffect,   // 像被吸入瓶子的效果
    ZXTransitionRippleEffect, // 波纹效果
    ZXTransitionPageCurl,     // 翻页效果
    ZXTransitionPageUnCurl,   // 反翻页效果
    ZXTransitionCameraOpen,   // 开镜头效果
    ZXTransitionCameraClose,  // 关镜头效果
    ZXTransitionCurlDown,     // 下翻页效果
    ZXTransitionCurlUp,       // 上翻页效果
    ZXTransitionFlipFromLeft, // 左翻转效果
    ZXTransitionFlipFromRight,// 右翻转效果
    ZXTransitionOglFlip       // 翻转
 
};

typedef NS_ENUM(NSUInteger ,ZXTransitionSubtype){
    ZXTransitionSubtypeFromLeft = 1,  // 从左边进入
    ZXTransitionSubtypeFromRight,     // 从右边进入
    ZXTransitionSubtypeFromTop,       // 从顶部进入
    ZXTransitionSubtypeFromBottom     // 从底部进入
 
};


@interface ZXTransitionAnimation : NSObject

+(void)transitionForView:(UIView *)aView
                    type:(ZXTransitionType)type
                 subType:(ZXTransitionSubtype)subType
                duration:(NSTimeInterval)duration;


@end
