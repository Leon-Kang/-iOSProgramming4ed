//
//  HypnosisViewController.m
//  HypnoNerd
//
//  Created by 康梁 on 15/10/4.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "HypnosisViewController.h"
#import "Hypnosister.h"

@implementation HypnosisViewController

- (void)loadView{
    // 创建一个Hypnosister对象
    Hypnosister *backgroundView = [[Hypnosister alloc] init];
    
    // 将Hypnosister对象赋给试图控制器的View属性
    self.view = backgroundView;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // 设置标签项的标题
        self.tabBarItem.title = @"Hypnotize";
        
        // 从图像文件创建一个UIImage对象
        // 在Retina显示屏上会加载Hypno@2x.png,而不是Hypno.png
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        
        // 将UIImage对象赋给标签项的image属性
        self.tabBarItem.image = i;
    }
    
    
    return self;
}

@end
