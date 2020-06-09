//
//  ViewController.m
//  test
//
//  Created by 渊凯 on 2020/6/6.
//  Copyright © 2020 渊凯. All rights reserved.
//
#import"Masonry.h"
#import "ViewController.h"
int num = 0;
@interface ViewController ()
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    //设置背景
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.image = [UIImage imageNamed:@"背景.jpg"];
    [self.view addSubview:imageView];
    //初始化手势
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(processTap1:)];
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(processTap2:)];
    UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(processTap3:)];
    UITapGestureRecognizer *tap4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(processTap4:)];
    UITapGestureRecognizer *tap5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(processTap5:)];
    UITapGestureRecognizer *tap6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(processTap6:)];
    UITapGestureRecognizer *tap7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(processTap7:)];
    UITapGestureRecognizer *tap8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(processTap8:)];
    UITapGestureRecognizer *tap9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(processTap9:)];
    //设置随机数
    num = arc4random()%9;
    NSLog(@"num is %d",num);
    //第一个view
    UIImageView *image1 = [[UIImageView alloc]init];
    [image1 setTag:0];
    [image1 addGestureRecognizer:tap1];
    [image1 setUserInteractionEnabled:YES];
    NSString* imagestr1 =  image1.tag == num ? @"卡牌400x540-（错误）" : @"卡牌400x540";
    [image1 setImage:[UIImage imageNamed:imagestr1]];
    [self.view addSubview:image1];
    [image1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(((self.view.frame.size.width)-45)/3, ((self.view.frame.size.height)-45)/3));
        make.left.equalTo(self.view).with.offset(15); make.top.equalTo(self.view).with.offset(20);
    }];
    //第二个view
    UIImageView *image2 = [[UIImageView alloc]init];
    [image2 setTag:1];
    [image2 addGestureRecognizer:tap2];
    [image2 setUserInteractionEnabled:YES];
    NSString* imagestr2 =  image2.tag == num ? @"卡牌400x540-（错误）" : @"卡牌400x540";
    [image2 setImage:[UIImage imageNamed:imagestr2]];
    [self.view addSubview:image2];
    [image2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(((self.view.frame.size.width)-45)/3, ((self.view.frame.size.height)-45)/3));
        make.left.equalTo(image1.mas_rightMargin).with.offset(15); make.top.equalTo(self.view).with.offset(20);
    }];
    //第三个view
    UIImageView *image3 = [[UIImageView alloc]init];
    [image3 setTag:2];
    [image3 addGestureRecognizer:tap3];
    [image3 setUserInteractionEnabled:YES];
    NSString* imagestr3 =  image3.tag == num ? @"卡牌400x540-（错误）" : @"卡牌400x540";
    [image3 setImage:[UIImage imageNamed:imagestr3]];
    [self.view addSubview:image3];
    [image3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(((self.view.frame.size.width)-45)/3, ((self.view.frame.size.height)-45)/3));
        make.left.equalTo(image2.mas_rightMargin).with.offset(15); make.top.equalTo(self.view).with.offset(20);
    }];
    //第四个view
    UIImageView *image4 = [[UIImageView alloc]init];
    [image4 setTag:3];
    [image4 addGestureRecognizer:tap4];
    [image4 setUserInteractionEnabled:YES];
    NSString* imagestr4 =  image4.tag == num ? @"卡牌400x540-（错误）" : @"卡牌400x540";
    [image4 setImage:[UIImage imageNamed:imagestr4]];
    [self.view addSubview:image4];
    [image4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(((self.view.frame.size.width)-45)/3, ((self.view.frame.size.height)-45)/3));
        make.left.equalTo(self.view).with.offset(15); make.top.equalTo(image1.mas_bottomMargin).with.offset(15);
    }];
    //第五个view
    UIImageView *image5 = [[UIImageView alloc]init];
    [image5 setTag:4];
    [image5 addGestureRecognizer:tap5];
    [image5 setUserInteractionEnabled:YES];
    NSString* imagestr5 =  image5.tag == num ? @"卡牌400x540-（错误）" : @"卡牌400x540";
    [image5 setImage:[UIImage imageNamed:imagestr5]];
    [self.view addSubview:image5];
    [image5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(((self.view.frame.size.width)-45)/3, ((self.view.frame.size.height)-45)/3));
        make.left.equalTo(image4.mas_rightMargin).with.offset(15); make.top.equalTo(image1.mas_bottomMargin).with.offset(15);
    }];
    //第六个view
    UIImageView *image6 = [[UIImageView alloc]init];
    [image6 setTag:5];
    [image6 addGestureRecognizer:tap6];
    [image6 setUserInteractionEnabled:YES];
    NSString* imagestr6 =  image6.tag == num ? @"卡牌400x540-（错误）" : @"卡牌400x540";
    [image6 setImage:[UIImage imageNamed:imagestr6]];
    [self.view addSubview:image6];
    [image6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(((self.view.frame.size.width)-45)/3, ((self.view.frame.size.height)-45)/3));
        make.left.equalTo(image5.mas_rightMargin).with.offset(15); make.top.equalTo(image1.mas_bottomMargin).with.offset(15);
    }];
    //第七个view
    UIImageView *image7 = [[UIImageView alloc]init];
    [image7 setTag:6];
    [image7 addGestureRecognizer:tap7];
    [image7 setUserInteractionEnabled:YES];
    NSString* imagestr7 =  image7.tag == num ? @"卡牌400x540-（错误）" : @"卡牌400x540";
    [image7 setImage:[UIImage imageNamed:imagestr7]];
    [self.view addSubview:image7];
    [image7 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(((self.view.frame.size.width)-45)/3, ((self.view.frame.size.height)-45)/3));
        make.left.equalTo(self.view).with.offset(15); make.top.equalTo(image4.mas_bottomMargin).with.offset(15);
    }];
    //第八个view
    UIImageView *image8 = [[UIImageView alloc]init];
    [image8 setTag:7];
    [image8 addGestureRecognizer:tap8];
    [image8 setUserInteractionEnabled:YES];
    NSString* imagestr8 =  image8.tag == num ? @"卡牌400x540-（错误）" : @"卡牌400x540";
    [image8 setImage:[UIImage imageNamed:imagestr8]];
    [self.view addSubview:image8];
    [image8 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(((self.view.frame.size.width)-45)/3, ((self.view.frame.size.height)-45)/3));
        make.left.equalTo(image7.mas_rightMargin).with.offset(15); make.top.equalTo(image4.mas_bottomMargin).with.offset(15);
    }];
    //第九个view
    UIImageView *image9 = [[UIImageView alloc]init];
    [image9 setTag:8];
    [image9 addGestureRecognizer:tap9];
    [image9 setUserInteractionEnabled:YES];
    NSString* imagestr9 =  image9.tag == num ? @"卡牌400x540-（错误）" : @"卡牌400x540";
    [image9 setImage:[UIImage imageNamed:imagestr9]];
    [self.view addSubview:image9];
    [image9 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(((self.view.frame.size.width)-45)/3, ((self.view.frame.size.height)-45)/3));
        make.left.equalTo(image8.mas_rightMargin).with.offset(15); make.top.equalTo(image4.mas_bottomMargin).with.offset(15);
    }];
//    for (int i = 0; i < 9; i++) {
//        UIView *viewe = [[UIView alloc] init];
//        view.frame = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
//    }
}
- (void)processTap1:(UIGestureRecognizer *)sender
{
//    UIImageView *imageview = (UIImageView *)[sender view];
    if(sender.view.tag == num){
        NSLog(@"你选对了");
    }else{
        NSLog(@"你选错了");
    }
}
- (void)processTap2:(UIGestureRecognizer *)sender
{
    if(sender.view.tag == num){
        NSLog(@"你选对了");
    }else{
        NSLog(@"你选错了");
    }}
- (void)processTap3:(UIGestureRecognizer *)sender
{
    if(sender.view.tag == num){
        NSLog(@"你选对了");
    }else{
        NSLog(@"你选错了");
    }}
- (void)processTap4:(UIGestureRecognizer *)sender
{
    if(sender.view.tag == num){
        NSLog(@"你选对了");
    }else{
        NSLog(@"你选错了");
    }}
- (void)processTap5:(UIGestureRecognizer *)sender
{
    if(sender.view.tag == num){
        NSLog(@"你选对了");
    }else{
        NSLog(@"你选错了");
    }}
- (void)processTap6:(UIGestureRecognizer *)sender
{
    if(sender.view.tag == num){
        NSLog(@"你选对了");
    }else{
        NSLog(@"你选错了");
    }}
- (void)processTap7:(UIGestureRecognizer *)sender
{
    if(sender.view.tag == num){
        NSLog(@"你选对了");
    }else{
        NSLog(@"你选错了");
    }}
- (void)processTap8:(UIGestureRecognizer *)sender
{
    if(sender.view.tag == num){
        NSLog(@"你选对了");
    }else{
        NSLog(@"你选错了");
    }}
- (void)processTap9:(UIGestureRecognizer *)sender
{
    if(sender.view.tag == num){
        NSLog(@"你选对了");
    }else{
        NSLog(@"你选错了");
    }}
@end
