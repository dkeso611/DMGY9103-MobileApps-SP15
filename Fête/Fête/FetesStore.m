//
//  FetesStore.m
//  Fête
//
//  Created by Kes on 4/29/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import "FetesStore.h"
#import "aFete.h"

@interface FetesStore ()

@property (nonatomic) NSMutableArray *Fetes;

@end

@implementation FetesStore

+ (instancetype)sharedStore

{
    static FetesStore *sharedStore;

    if(!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    
    return sharedStore;
}
- (instancetype)init
{
@throw [NSException exceptionWithName:@"Singleton"
                               reason:@"Use + [FetesStore sharedStore]"
                             userInfo:nil];
    return nil;
}

-(instancetype)initPrivate
{
    self = [super init];
    if (self) {
        
         _Fetes = [[NSMutableArray alloc] init];
        
    
        NSDate *now = [[NSDate alloc] init];
        NSDate *randomDate = [now dateByAddingTimeInterval:arc4random_uniform(60*60*24*60)];
        NSDate *randomDate2 = [now dateByAddingTimeInterval:arc4random_uniform(60*60*24*60)];
        NSDate *randomDate3 = [now dateByAddingTimeInterval:arc4random_uniform(60*60*24*60)];
        
        
        NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
        [timeFormat setDateFormat:@"h:mm a"];
        
        
        
        
        aFete * Fete1 = [[aFete alloc] initWithName:@"Glow Party"
                                              flyer:[UIImage imageNamed:@"glowparty.jpg"]
                                              promo:@"TeamAK Promotions"
                                           location:@"Mira Lounge"
                                               date:randomDate
                                               time:[timeFormat stringFromDate:randomDate]
                                            musicBy:nil
                                              price:@"$5"
                                           hashtags:nil];
        
        [self.Fetes addObject:Fete1];
        
        aFete * Fete2 = [[aFete alloc] initWithName:@"YB's All White Party"
                                              flyer:[UIImage imageNamed:@"allwhite.jpg"]
                                              promo:@"Team YB"
                                           location:@"Santos Party House"
                                               date:randomDate2
                                               time:nil
                                            musicBy:nil
                                              price:@"Free"
                                           hashtags:nil];
        
        [self.Fetes addObject:Fete2];
        
        
        
        aFete * Fete3 = [[aFete alloc] initWithName:@"DJ Tunez 4th Annual Taurus Party"
                                              flyer:[UIImage imageNamed:@"taurus.jpg"]
                                              promo:@"DJ Tunez Promotion"
                                           location:@"Milk River"
                                               date:randomDate3
                                               time:nil
                                            musicBy:nil
                                              price:@"Free"
                                           hashtags:nil];
        
        [self.Fetes addObject:Fete3];
        
        
    }




    return self;
}

-(NSArray *)allFetes
{
    return [self.Fetes copy];
}

@end


