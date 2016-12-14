//
//  ViewController.m
//  HYdistortionlessSlidingImages
//
//  Created by henyinsitan on 16/12/2.
//  Copyright © 2016年 刘梦翔. All rights reserved.
//

#import "HYMainViewController.h"
#import "XHSImitationScrollView.h"
#import "ImgModel.h"

@interface HYMainViewController ()

@property (nonatomic, strong) XHSImitationScrollView *imitationScrollView;

@end

@implementation HYMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _imitationScrollView = [[XHSImitationScrollView alloc] initWithFrame:self.view.bounds imgModel:[self makeData]];
    [self.view addSubview:_imitationScrollView];
}

//测试model数据制作
- (NSMutableArray *)makeData {
    //多张图片
    NSArray *imageArray = @[
                            @"http://g.hiphotos.baidu.com/image/w%3D310/sign=6f9ce22079ec54e741ec1c1f89399bfd/9d82d158ccbf6c81cea943f6be3eb13533fa4015.jpg",
                            @"http://b.hiphotos.baidu.com/image/pic/item/4bed2e738bd4b31cc6476eb985d6277f9e2ff8bd.jpg",
                            @"http://c.hiphotos.baidu.com/image/pic/item/94cad1c8a786c9174d18e030cb3d70cf3bc7579b.jpg",
                            @"http://e.hiphotos.baidu.com/image/w%3D310/sign=79bc1b1a950a304e5222a6fbe1c9a7c3/d1160924ab18972b50a46fd4e4cd7b899e510a15.jpg",
                            @"http://c.hiphotos.baidu.com/image/w%3D310/sign=05e2c867272dd42a5f0907aa333a5b2f/7dd98d1001e93901f3f7103079ec54e737d196c3.jpg",
                            @"http://g.hiphotos.baidu.com/image/w%3D310/sign=6f9ce22079ec54e741ec1c1f89399bfd/9d82d158ccbf6c81cea943f6be3eb13533fa4015.jpg",
                            @"http://b.hiphotos.baidu.com/image/pic/item/4bed2e738bd4b31cc6476eb985d6277f9e2ff8bd.jpg",
                            @"http://c.hiphotos.baidu.com/image/pic/item/94cad1c8a786c9174d18e030cb3d70cf3bc7579b.jpg",
                            @"http://e.hiphotos.baidu.com/image/w%3D310/sign=79bc1b1a950a304e5222a6fbe1c9a7c3/d1160924ab18972b50a46fd4e4cd7b899e510a15.jpg",
                            @"http://c.hiphotos.baidu.com/image/w%3D310/sign=05e2c867272dd42a5f0907aa333a5b2f/7dd98d1001e93901f3f7103079ec54e737d196c3.jpg",
                            @"http://g.hiphotos.baidu.com/image/w%3D310/sign=6f9ce22079ec54e741ec1c1f89399bfd/9d82d158ccbf6c81cea943f6be3eb13533fa4015.jpg",
                            @"http://b.hiphotos.baidu.com/image/pic/item/4bed2e738bd4b31cc6476eb985d6277f9e2ff8bd.jpg",
                            @"http://c.hiphotos.baidu.com/image/pic/item/94cad1c8a786c9174d18e030cb3d70cf3bc7579b.jpg",
                            @"http://e.hiphotos.baidu.com/image/w%3D310/sign=79bc1b1a950a304e5222a6fbe1c9a7c3/d1160924ab18972b50a46fd4e4cd7b899e510a15.jpg",
                            @"http://g.hiphotos.baidu.com/image/w%3D310/sign=6f9ce22079ec54e741ec1c1f89399bfd/9d82d158ccbf6c81cea943f6be3eb13533fa4015.jpg",
                            @"http://c.hiphotos.baidu.com/image/w%3D310/sign=05e2c867272dd42a5f0907aa333a5b2f/7dd98d1001e93901f3f7103079ec54e737d196c3.jpg"
                            ];
    NSArray *imageWidthArray = @[@310.f,@583,@680,@310,@310,@310.f,@583,@680,@310,@310,@310.f,@583,@680,@310,@310.f,@310];
    NSArray *imageHeightArray = @[@413,@480,@694,@465,@465,@413,@480,@694,@465,@465,@413,@480,@694,@465,@413,@465];
    
    //    //只有一张图片
    //    NSArray *imageArray = @[@"http://g.hiphotos.baidu.com/image/w%3D310/sign=6f9ce22079ec54e741ec1c1f89399bfd/9d82d158ccbf6c81cea943f6be3eb13533fa4015.jpg"];
    //    NSArray *imageWidthArray = @[@310.f];
    //    NSArray *imageHeightArray = @[@413];
    
    NSMutableArray *imgModelArrray = [[NSMutableArray alloc] init];
    for (int i=0; i < imageArray.count; i ++) {
        ImgModel *model = [[ImgModel alloc] init];
        model.url = imageArray[i];
        model.width = [imageWidthArray[i] floatValue];
        model.height = [imageHeightArray[i] floatValue];
        [imgModelArrray addObject:model];
    }
    
    return imgModelArrray;
}


@end
