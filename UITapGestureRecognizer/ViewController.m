//
//  ViewController.m
//  UITapGestureRecognizer
//
//  Created by 関戸優紀 on 2015/04/18.
//  Copyright (c) 2015年 関戸優紀. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect rect1 = CGRectMake(10, 30, 300, 100);
    UIView *myView = [[UIView alloc]initWithFrame:rect1];
    myView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:myView];
    
    /* シングルタップ */
    UITapGestureRecognizer *tapGesture =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(myView_Tapped:)];
    
    
    // ビューにジェスチャーを追加
    [myView addGestureRecognizer:tapGesture];
    
    UITapGestureRecognizer *doubleTapGesture =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(view_DoubleTapped:)];
    
    // ダブルタップ
    doubleTapGesture.numberOfTapsRequired = 2;
    
    // ビューにジェスチャーを追加
    [self.view addGestureRecognizer:doubleTapGesture];
    
    UITapGestureRecognizer *tapFingerGesture =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(view_FingerTapped:)];
    
    // 2本指
    tapGesture.numberOfTouchesRequired = 2;
    
    // ビューにジェスチャーを追加
    [self.view addGestureRecognizer:tapFingerGesture];



}
- (void)myView_Tapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"タップされました．");
}
- (void)view_DoubleTapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"ダブルタップされました．");
}
- (void)view_FingerTapped:(UITapGestureRecognizer *)sender
{
    NSLog(@"2本指されました．");
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
