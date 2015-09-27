//
//  main.m
//  RandomItems
//
//  Created by 康梁 on 15/9/27.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // 创建一个NSMutableArray对象，并用items变量保存该对象的地址
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // 向items所指向的NSMutableArray对象发送addObject:对象
        // 每次传入一个字符串
        [items addObject:@"one"];
        [items addObject:@"two"];
        [items addObject:@"three"];
        
        // 继续向同一个对象发送信息，这次是insertObject:atIndex:
        [items insertObject:@"zero" atIndex:0];
        
        // 遍历items数组的每一个item
        // 1. 使用for循环遍历
//        for (int i = 0; i < [items count]; i++) {
//            NSString *item = [items objectAtIndex:i];
//            NSLog(@"%@",item);
//        }
        // 2. 使用快速枚举
        for (NSString *item in items) {
            NSLog(@"%@",item);
        }
        // 注: 快速枚举有限制，如果要在循环中加入或删除对象，会报错。
        
        // 构建一个BNRItem对象
        BNRItem *item = [[BNRItem alloc] init];
        
//        [item setItemName:@"Red Sofa"];
//        [item setSeriaNumber:@"A1B2C"];
//        [item setValueInDollars:200];
//        NSLog(@"%@ %@ %@ %d",[item itemName],[item dateCreated],[item seriaNumber],[item valueInDollars]);
        
        // 使用点语法
        item.itemName = @"Red Sofa";
        item.seriaNumber = @"A1B2C";
        item.valueInDollars = 200;
        
        NSLog(@"%@ %@ %@ %d",item.itemName,item.dateCreated,item.seriaNumber,item.valueInDollars);
        

        
        // 释放items所指向的NSMutableArray对象
        items = nil;
        
    }
    return 0;
}
