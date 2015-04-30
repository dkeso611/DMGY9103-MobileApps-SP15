//
//  FetesStore.h
//  Fête
//
//  Created by Kes on 4/29/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import <Foundation/Foundation.h>
@class aFete;

@interface FetesStore : NSObject

@property (nonatomic, readonly) NSArray *allFetes;
+ (instancetype)sharedStore;



@end
