//
//  FrameModel.h
//  LOL英雄介绍
//
//  Created by smith on 15/9/1.
//  Copyright (c) 2015年 smith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CellModel.h"
@interface FrameModel : NSObject
//用户头像的frame
@property (assign,nonatomic) CGRect iViewF  ;
//英雄名称的frame
@property (assign,nonatomic) CGRect userNameF ;
//详细描述的frame
@property (assign,nonatomic) CGRect descriF ;
//计算cell的高度
@property (assign,nonatomic) CGFloat cellHieght ;

//数据模型，给我数据模型，我就根据你所给的数据帮你把cell中的自定义控件的高度给你计算出来
@property (nonatomic,strong) CellModel * model ;

@end
