//
//  XHSImgView.m
//  XHSImitationScrollDemo
//
//  Created by henyinsitan on 16/11/29.
//  Copyright © 2016年 刘梦翔. All rights reserved.
//

#import "XHSImgView.h"

@interface XHSImgView () 

@property (nonatomic, strong) ImgModel *model;
@property (nonatomic, strong) NSMutableArray *signViewArray;

@end

@implementation XHSImgView

- (instancetype)initWithModel:(ImgModel *)model {
    self = [super init];
    if (self) {
        self.signViewArray = [[NSMutableArray alloc] init];
        self.backgroundColor = [UIColor lightGrayColor];
        self.translatesAutoresizingMaskIntoConstraints = NO;
        self.model = model;
    }
    return self;
}

- (void)setModel:(ImgModel *)model {
    _model = model;
    //自身宽高比约束
    NSLayoutConstraint *aseptConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:_model.width / _model.height constant:0];
    [self addConstraint:aseptConstraint];
}



@end
