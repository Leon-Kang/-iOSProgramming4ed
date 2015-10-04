//
//  Hypnosister.m
//  Hypnosisiter01
//
//  Created by 康梁 on 15/10/3.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "Hypnosister.h"

@interface Hypnosister()

@property (strong, nonatomic) UIColor *circleColor;

@end


@implementation Hypnosister

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}

// Hypnosisiter被触摸时会收到该信息
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ was touched",self);
    
    // 获取三个0到1之间的数字
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    
    self.circleColor = randomColor;
    
}

- (void)setCircleColor:(UIColor *)circleColor{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect{
    CGRect bounds = self.window.bounds;
    
    // 根据bounds计算中心点
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width/2.0;
    center.y = bounds.origin.y + bounds.size.height/2.0;
    
    // 根据视图宽和高中的较小值计算圆形的半径
    // float radius = (MIN(bounds.size.width, bounds.size.height)/2.0);
    
    // 使最外层圆形成为视图的外接圆
    float maxRadius = hypot(bounds.size.width, bounds.size.height)/2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    // 以中心为原点、radius为半径，定义一个0到M_PI*2.0弧度的路径
    // [path addArcWithCenter:center
                    // radius:radius
                // startAngle:0.0
                //   endAngle:M_PI * 2.0
                //  clockwise:YES];
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        
        [path moveToPoint:CGPointMake(center.x +currentRadius, center.y)];
        
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    
    // 线圈宽度为10点
    path.lineWidth = 10;
    // 设置绘制颜色为浅灰色
    //[[UIColor lightGrayColor] setStroke];
    
    [self.circleColor setStroke];
    
    // 绘制
    [path stroke];
    
}




























@end
