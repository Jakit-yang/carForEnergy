//
//  leftViewController.m
//  carForEnergy
//
//  Created by qc on 2017/3/31.
//  Copyright © 2017年 新能源. All rights reserved.
//

#import "LeftViewController.h"
#import "Masonry.h"
#define CELLIDENTIFIER @"listCell"
@interface LeftViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *listTitleArray;
}
@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initView {
    listTitleArray = [NSMutableArray arrayWithObjects:@"租车",@"订单",@"钱包",@"认证",@"消息",@"设置", nil];
    
    UITableView *tableV = [[UITableView alloc]init];
    tableV.delegate = self;
    tableV.dataSource = self;
    tableV.backgroundColor = [UIColor whiteColor];
    [tableV setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.view addSubview:tableV];
    
    [tableV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
}

#pragma mark - UITableViewDelegate UITableViewDataSource
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return listTitleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELLIDENTIFIER];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CELLIDENTIFIER];
        cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cell.frame];
        cell.selectedBackgroundView.backgroundColor = [UIColor orangeColor];
    }
    
    cell.textLabel.text = [listTitleArray objectAtIndex:indexPath.row];
    
    return cell;
}

@end
