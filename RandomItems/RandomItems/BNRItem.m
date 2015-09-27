//
//  BNRItem.m
//  RandomItems
//
//  Created by 康梁 on 15/9/27.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (void)setItemName:(NSString *)str
{
    _itemName = str;
}
- (NSString *)itemName
{
    return _itemName;
}

- (void)setSeriaNumber:(NSString *)str
{
    _serialNumber = str;
}
- (NSString *)seriaNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}
- (int)valueInDollars
{
    return _valueInDollars;
}

- (NSData *)dateCreated
{
    return _dateCreated;
}

@end
