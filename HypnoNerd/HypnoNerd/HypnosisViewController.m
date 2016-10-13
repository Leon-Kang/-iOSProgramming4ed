//
//  HypnosisViewController.m
//  HypnoNerd
//
//  Created by 康梁 on 15/10/4.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "HypnosisViewController.h"
#import "Hypnosister.h"

@interface HypnosisViewController() <UITextFieldDelegate>

@end


@implementation HypnosisViewController

- (void)viewDidLoad{
    // 必须调用父类的viewDidLoad
    [super viewDidLoad];
    // NSLog(@"HypnosisViewController loaded its view.");
}

- (void)loadView{
    CGRect frame = [UIScreen mainScreen].bounds;
    // 创建一个Hypnosister对象
    Hypnosister *backgroundView = [[Hypnosister alloc] initWithFrame:frame];
    
    CGRect textFieldRect = CGRectMake(40, 70, 240, 30);
    UITextField *textField = [[UITextField alloc] initWithFrame:textFieldRect];
    
    // 设置UITextField对象的边框样式，便于查看它在屏幕上的位置
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"Hypnotize me";
    textField.returnKeyType = UIReturnKeyDone;
    textField.delegate = self;
    
    [backgroundView addSubview:textField];
    
    // 将Hypnosister对象赋给试图控制器的View属性
    self.view = backgroundView;

}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    // NSLog(@"%@",textField.text);
    [self drawHypnoticMessage:textField.text];
    
    textField.text = @"";
    [textField resignFirstResponder];
    
    return YES;
}

- (void)drawHypnoticMessage:(NSString *)message
{
    for (int i = 0; i < 20 ; i++) {
        UILabel *messageLabel = [[UILabel alloc] init];
        // 设置UILabel对象的文字和颜色
        messageLabel.backgroundColor = [UIColor clearColor];
        messageLabel.textColor = [UIColor whiteColor];
        messageLabel.text = message;
        
        // 根据需要显示的文字调整UILabel对象的大小
        [messageLabel sizeToFit];
        
        // 获取随机x坐标
        // 使UILabel对象的宽度不超出HypnosisViewController的View宽度
        int width = (int)(self.view.bounds.size.width - messageLabel.bounds.size.width);
        int x = arc4random() % width;
        
        // 获取随机y坐标
        // 使UILabel对象的高度不超出HypnosisViewController的View高度
        int height = (int)(self.view.bounds.size.height - messageLabel.bounds.size.height);
        int y = arc4random() % height;
        
        // 设置UILabel对象的frame
        CGRect frame = messageLabel.frame;
        frame.origin = CGPointMake(x, y);
        messageLabel.frame = frame;
        
        // 将UILabel对象添加到HypnosisViewController的View中
        [self.view addSubview:messageLabel];
   
        
        // 使UILabel对象的中心点坐标在每个方向上最多移动25点
        UIInterpolatingMotionEffect *motionEffect;
        motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
        motionEffect.minimumRelativeValue = @(-25);
        motionEffect.maximumRelativeValue = @(25);
        [messageLabel addMotionEffect:motionEffect];
        
        motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type: UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
        motionEffect.minimumRelativeValue = @(-25);
        motionEffect.maximumRelativeValue = @(25);
        [messageLabel addMotionEffect:motionEffect];
    }
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
