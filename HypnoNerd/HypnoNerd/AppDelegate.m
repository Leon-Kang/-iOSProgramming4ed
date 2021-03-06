//
//  AppDelegate.m
//  HypnoNerd
//
//  Created by 康梁 on 15/10/4.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "AppDelegate.h"
#import "HypnosisViewController.h"
#import "ReminderViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //    // Do any additional setup after loading the view, typically from a nib.
    HypnosisViewController *hvc = [[HypnosisViewController alloc] init];
    
    
    
    /* // 获取指向NSBundle对象的指针，该NSBundle对象代表应用的主程序包
    NSBundle *appBundle = [NSBundle mainBundle];
    
    // 告诉初始化方法在appBundle中查找ReminderViewController.xib文件
    
    ReminderViewController *rvc = [[ReminderViewController alloc] initWithNibName:@"ReminderViewController" bundle:appBundle];  */
    
    ReminderViewController *rvc = [[ReminderViewController alloc] init];

    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[hvc,rvc];
    
    self.window.rootViewController = tabBarController;
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}






@end
