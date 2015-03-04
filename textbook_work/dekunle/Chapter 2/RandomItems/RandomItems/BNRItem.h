//
//  BNRItem.h
//  RandomItems
//
//  Created by Kes on 2/17/15.
//  Copyright (c) 2015 DK Media. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    
}

+ (instancetype)randomItem;

//Deignated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

- (void)setItemName:(NSString *)str;
- (NSString *)itemName;
- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;
- (void)setValueInDollars:(int)v;
- (int)valueInDollars;
- (NSDate *)dateCreated;

@end
