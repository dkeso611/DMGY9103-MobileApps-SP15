//
//  main.m
//  RandomItems
//
//  Created by Kes on 2/17/15.
//  Copyright (c) 2015 DK Media. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
       NSLog(@"Setting items to nil...");
        // Destroy the mutable array object
        items = nil;
    }

     return 0;
    

        // This creates an NSString, "Red Sofa" and gives it to the BNRItem
        //item.ItemName = @"Red Sofa";
        
        // This creates an NSString, "A1B2C" and gives it to the BNRItem
        //item.SerialNumber = @"A1B2C";
        
        // This sends the value 100 to be used as the valueInDollars of this BNRItem
        //item.ValueInDollars = 100;
        
        
        //NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);
        
        // The %@ token is replaced with the result of sending
        // the description message to the corresponding argument

}
