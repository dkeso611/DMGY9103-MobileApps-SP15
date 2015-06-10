//
//  aFete.m
//  Fête
//
//  Created by Kes on 4/12/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import "Fete.h"

@implementation Fete

@synthesize name;
@synthesize flyer;
@synthesize promo;
@synthesize location;
@synthesize date;
@synthesize time;
@synthesize musicBy;
@synthesize price;
@synthesize hashtags;

- (id)initWithName:(NSString *)name_
             flyer:(PFFile *)flyer_
             promo:(NSString *)promo_
          location:(NSString *)location_
              date:(NSString *)date_
              time:(NSString *)time_
           musicBy:(NSMutableArray *)musicBy_
             price:(NSString *)price_
          hashtags:(NSMutableArray *)hashtags_
{
    self = [self init];
    if (self) {
        self.name = name_;
        self.flyer = flyer_;
        self.promo = promo_;
        self.location = location_;
        self.date = date_;
        self.time = time_;
        self.musicBy = musicBy_;
        self.price = price_;
        self.hashtags = hashtags_;
        
    }
    
    return self;
}

@end
