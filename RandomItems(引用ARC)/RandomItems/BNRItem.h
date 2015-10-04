//
//  BNRItem.h
//  RandomItems
//
//  Created by 康梁 on 15/9/27.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

// 头文件声明顺序 约定：1.实例变量声明 2.类方法 3.实例方法/对象方法

@interface BNRItem : NSObject

+ (instancetype)randomItem;

// BNRItem类的指定初始化方法
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSData *dateCreated;



@end
