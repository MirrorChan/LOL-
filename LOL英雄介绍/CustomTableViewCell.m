//
//  CustomTableViewCell.m
//  LOL英雄介绍
//
//  Created by smith on 15/9/1.
//  Copyright (c) 2015年 smith. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        _iView = [[UIImageView alloc] init] ;
        [self.contentView addSubview:_iView] ;
        
        _userNameLabel = [[UILabel alloc] init] ;
        _userNameLabel.font = [UIFont boldSystemFontOfSize:24] ;
        _userNameLabel.textAlignment = NSTextAlignmentLeft ;
        _userNameLabel.textColor = [UIColor blackColor] ;
        [self.contentView addSubview:_userNameLabel] ;
        
        _descriptionLabel = [[UILabel alloc] init] ;
        _descriptionLabel.font = [UIFont systemFontOfSize:20] ;
        _descriptionLabel.textColor = [UIColor grayColor] ;
        _descriptionLabel.textAlignment = NSTextAlignmentLeft ;
        //设置换行
        _descriptionLabel.numberOfLines = 0 ;
        
        [self.contentView addSubview:_descriptionLabel] ;
        
        
    }
    return self ;
}

//重写frameModel的set方法，当frameModel赋值时，立即给zidingyicell里面的控件赋值
- (void)setFrameModel:(FrameModel *)frameModel
{
    _frameModel = frameModel ;
    
    _iView.frame = _frameModel.iViewF ;
    
    _userNameLabel.frame = _frameModel.userNameF ;
    
    _descriptionLabel.frame  = _frameModel.descriF ;
    
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
