//
//  ReminderViewController.m
//  HypnoNerd
//
//  Created by 康梁 on 15/10/4.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "ReminderViewController.h"

@interface ReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation ReminderViewController

- (void)viewDidLoad{
    // 必须调用父类的viewDidLoad
    [super viewDidLoad];
    // NSLog(@"ReminderViewController loaded its view.");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)addReminder:(id)sender{
    NSDate *date = self.datePicker.date;
    // NSLog(@"Setting a reminder for %@",date);
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Hypnotize me!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        // 获取tabBarItem属性所指向的UITabBarItem对象
        UITabBarItem *tbi = self.tabBarItem;
        
        // 设置标签项的标题
        tbi.title = @"Reminder";
        
        // 设置UITabBarItem对象的图像
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        tbi.image = i;
    }
    
    
    return self;
}





@end
