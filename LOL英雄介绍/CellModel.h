//
//  CellModel.h
//  LOL英雄介绍
//
//  Created by smith on 15/9/1.
//  Copyright (c) 2015年 smith. All rights reserved.
//

#import <Foundation/Foundation.h>
//我们一个cell对应一个model（数据模型）
@interface CellModel : NSObject
//我们的头像名称
@property (nonatomic,strong) NSString * userImage ;
//英雄名称
@property (nonatomic,strong) NSString * userName ;
//详细描叙
@property (nonatomic,strong) NSString * descrString ;


@end
