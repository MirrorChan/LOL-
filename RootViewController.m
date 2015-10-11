//
//  RootViewController.m
//  LOL英雄介绍
//
//  Created by smith on 15/9/1.
//  Copyright (c) 2015年 smith. All rights reserved.
//

#import "RootViewController.h"
#import "CellModel.h"
#import "FrameModel.h"
#import "CustomTableViewCell.h"

@interface RootViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView * table ;
    NSMutableArray * dataArray ;
}

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    dataArray = [NSMutableArray array] ;
    NSString * path  =[[NSBundle mainBundle] pathForResource:@"heros" ofType:@"plist"] ;
    NSArray * array = [NSArray arrayWithContentsOfFile:path] ;
    for (NSDictionary * dic in array)
    {
        //初始化frame
        FrameModel * frameModel = [[FrameModel alloc] init] ;
        //初始化数据源
        CellModel * model = [[CellModel alloc] init] ;
        model.userImage = dic[@"icon"] ;
        model.userName = dic[@"name"] ;
        model.descrString = dic[@"intro"] ;
        //调用了cellmodel的set方法
        frameModel.model = model ;
        
        [dataArray addObject:frameModel] ;
    }
    
    table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain] ;
    table.dataSource = self ;
    table.delegate = self ;
    table.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero] ;
    
    [self.view addSubview:table] ;
}
#pragma mark -- UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return dataArray.count ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellId = @"cellId" ;
    CustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellId] ;
    if (cell == nil)
    {
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId] ;
    }
    //一定要通过cell调用
    cell.frameModel = dataArray[indexPath.row] ;
    
    cell.iView.image = [UIImage imageNamed:cell.frameModel.model.userImage] ;
    
    cell.userNameLabel.text = cell.frameModel.model.userName ;
    
    cell.descriptionLabel.text = cell.frameModel.model.descrString ;
    
    return cell ;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FrameModel * frameModel = dataArray[indexPath.row] ;
    
    return [frameModel cellHieght] ;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
