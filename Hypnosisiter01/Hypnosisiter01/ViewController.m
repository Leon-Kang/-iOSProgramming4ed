//
//  ViewController.m
//  Hypnosisiter01
//
//  Created by 康梁 on 15/10/3.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "ViewController.h"
#import "Hypnosister.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Hypnosister *firstView = [[Hypnosister alloc] initWithFrame:self.view.frame];
    
    // [self.view addSubview:firstView];
    
    // 创建两个CGRect结构分别作为UIScrollView对象和HypnosisiterView对象的frame
    CGRect screenRect = self.view.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    // bigRect.size.height *= 2.0;
    
    // 创建一个UIScrollView对象，将其尺寸设置为窗口大小
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [scrollView setPagingEnabled:YES];
    [self.view addSubview:scrollView];
    
    // 创建一个有着超大尺寸的HypnosisterView对象并将其加入UIScrollView对象
    // Hypnosister *hypnosisView = [[Hypnosister alloc] initWithFrame:bigRect];
    
    // 创建一个与屏幕大小相同的HypnosisterView对象并将其加入UIScrollView对象
    Hypnosister *hypnosisView = [[Hypnosister alloc] initWithFrame:screenRect];
    
    [scrollView addSubview:hypnosisView];
    
    // 创建第二个大小与屏幕相同的HypnosisView对象并放置在第一个HypnosisView右侧，使其刚好移出屏幕外
    screenRect.origin.x += screenRect.size.width;
    Hypnosister *anotherView = [[Hypnosister alloc] initWithFrame:screenRect];
    [scrollView addSubview:anotherView];
    
    // 告诉UIScrollView对象『取景』范围有多大
    scrollView.contentSize = bigRect.size;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
