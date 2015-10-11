//
//  FrameModel.m
//  LOL英雄介绍
//
//  Created by smith on 15/9/1.
//  Copyright (c) 2015年 smith. All rights reserved.
//

#import "FrameModel.h"
#define SCREEMW [UIScreen mainScreen].bounds.size.width

@implementation FrameModel


- (void)setModel:(CellModel *)model
{
    _model = model ;
    //计算图片的frame
    _iViewF = CGRectMake(10, 10, 60, 60) ;
    //英雄名称的frame
    _userNameF = CGRectMake(CGRectGetMaxX(_iViewF)+5, _iViewF.origin.y, SCREEMW - 75, 60) ;
    
    CGFloat height = [self getHieghtWith:_model.descrString andFont:[UIFont systemFontOfSize:20] andWidth:SCREEMW-80] ;
    _descriF = CGRectMake(40, CGRectGetMaxY(_iViewF), SCREEMW-80, height) ;
    
    _cellHieght = 80+height ;
    
}

- (CGFloat)getHieghtWith:(NSString *)text andFont:(UIFont *)font andWidth:(CGFloat)width
{
  CGRect frame =  [text boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil] ;
    
    CGFloat hieght = frame.size.height ;
    
    return hieght ;
}



@end
