//
//  CustomTableViewCell.h
//  LOL英雄介绍
//
//  Created by smith on 15/9/1.
//  Copyright (c) 2015年 smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FrameModel.h"

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic,strong) UIImageView * iView ;

@property (nonatomic,strong) UILabel * userNameLabel ;

@property (nonatomic,strong) UILabel * descriptionLabel ;


@property (nonatomic,strong) FrameModel * frameModel ;

@end
