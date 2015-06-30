//
//  ViewController.m
//  Message
//
//  Created by lanou3g on 15/6/27.
//  Copyright (c) 2015年 高秋实. All rights reserved.
//

#import "ViewController.h"
#import <RongIMKit/RongIMKit.h>
#import "ChatListViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    self.btn = [UIButton buttonWithType:UIButtonTypeSystem];
    _btn.frame = CGRectMake(100, 100, 100, 100);
    _btn.backgroundColor = [UIColor greenColor];
    [_btn setTitle:@"Start" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(startAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_btn];
     
}

- (void)startAction:(UIButton *)sender
{
    NSLog(@"*/*/*/");
    

    ChatListViewController *chat = [[ChatListViewController alloc] initWithDisplayConversationTypes:nil collectionConversationType:nil];
    
    [self.navigationController pushViewController:chat animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
