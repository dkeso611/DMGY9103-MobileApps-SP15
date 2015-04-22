//
//  aFete.h
//  Fête
//
//  Created by Kes on 4/12/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface aFete : NSObject


@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) UIImage *flyer;
@property (nonatomic, strong) NSString *promo;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSString *time;
@property (nonatomic, strong) NSMutableArray *musicBy;
@property (nonatomic, strong) NSString *price;
@property (nonatomic, strong) NSMutableArray *hashtags;

- (id)initWithName:(NSString *)name_
             flyer:(UIImage *)flyer_
             promo:(NSString *)promo_
          location:(NSString *)location_
              date:(NSDate *)date_
              time:(NSString *)time_
             musicBy:(NSMutableArray *)musicBy_
             price:(NSString *)price_
          hashtags:(NSMutableArray *)hashtags_;


@end
