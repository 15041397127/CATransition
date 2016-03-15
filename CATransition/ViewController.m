//
//  ViewController.m
//  CATransition
//
//  Created by zhang xu on 16/3/11.
//  Copyright © 2016年 zhangXu. All rights reserved.
//

#import "ViewController.h"
#import "ZXTransitionAnimation.h"
@interface ViewController ()
@property (nonatomic ,assign)int subType;
@property (nonatomic ,strong)NSArray *array;

@property (nonatomic ,strong)UIImage *img1;
@property (nonatomic ,strong)UIImage *img2;
@property (nonatomic ,strong)UIImage *img3;
@property (nonatomic ,assign)BOOL isImage1;
@property (nonatomic ,assign)NSUInteger index;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.array = @[@(ZXTransitionFade),
                   @(ZXTransitionPush),
                   @(ZXTransitionReveal),
                   @(ZXTransitionMoveIn),
                   @(ZXTransitionCube),
                   @(ZXTransitionSuckEffect),
                   @(ZXTransitionRippleEffect),
                   @(ZXTransitionPageCurl),
                   @(ZXTransitionPageUnCurl),
                   @(ZXTransitionCameraOpen),
                   @(ZXTransitionCameraClose),
                   @(ZXTransitionCurlDown),
                   @(ZXTransitionCurlUp),
                   @(ZXTransitionFlipFromLeft),
                   @(ZXTransitionFlipFromRight),
                   @(ZXTransitionOglFlip)];
//    self.img1 = [UIImage imageNamed:@"61"];
    self.img1 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"61" ofType:@"jpg"]];
//    self.img2 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"D" ofType:@"jpg"]];
//    self.img2= [UIImage imageNamed:@"D"];
    self.img3 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"8" ofType:@"jpg"]];
//    self.img3 = [UIImage imageNamed:@"8"];
    self.view.backgroundColor =[UIColor colorWithPatternImage:self.img1];
    self.isImage1  = YES;
    [NSTimer scheduledTimerWithTimeInterval: 1.0 target:self selector:@selector(updateAnimation) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    
    
}

-(void)updateAnimation{
    
    if (self.index >= self.array.count) {
        self.index = 0;
    }
    
    ZXTransitionType type =[[self.array objectAtIndex:self.index++]intValue];
    static int s_subtypeValue = 0;
    ZXTransitionSubtype subtype = ZXTransitionSubtypeFromTop;
    s_subtypeValue++;
    if (s_subtypeValue >= 4) {
        s_subtypeValue = 1;
    }
    
    subtype = (ZXTransitionSubtype)s_subtypeValue;
    
    [ZXTransitionAnimation transitionForView:self.view
                                        type:type
                                     subType:subtype
                                    duration:1.0];
    
    if (self.isImage1) {
        self.view.backgroundColor = [UIColor colorWithPatternImage:self.img1];
        
    }else{
        self.view.backgroundColor = [UIColor colorWithPatternImage:self.img3];
    }
    
    self.isImage1 = !self.isImage1;
    
}

@end
