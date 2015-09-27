//
//  BNRItem.h
//  RandomItems
//
//  Created by 康梁 on 15/9/27.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSData *_dateCreated;
    
}

- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSeriaNumber:(NSString *)str;
- (NSString *)seriaNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSData *)dateCreated;

@end
