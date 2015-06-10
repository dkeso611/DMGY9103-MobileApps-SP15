////
////  FetesStore.m
////  Fête
////
////  Created by Kes on 4/29/15.
////  Copyright (c) 2015 Suru Media. All rights reserved.
////
//
//#import "FetesStore.h"
//#import "Fete.h"
//#import <Parse.h>
//
//@interface FetesStore ()
//
//@property (nonatomic) NSMutableArray *Fetes;
//
//@end
//
//@implementation FetesStore
//
//+ (instancetype)sharedStore
//
//{
//    static FetesStore *sharedStore;
//
//    if(!sharedStore) {
//        sharedStore = [[self alloc] initPrivate];
//    }
//    
//    return sharedStore;
//}
//
//- (instancetype)init
//{
//@throw [NSException exceptionWithName:@"Singleton"
//                               reason:@"Use + [FetesStore sharedStore]"
//                             userInfo:nil];
//    return nil;
//}
//
//-(instancetype)initPrivate
//{
//    self = [super init];
//    if (self) {
//        [self seed];
//    }
//    
//    return self;
//}
//
//-(NSArray *)allFetes
//{
//    return [self.Fetes copy];
//}
//
// - (void)seed
//{
//    
//    _Fetes = [[NSMutableArray alloc] init];
//    
//    
//   
//    
//    
//    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
//    [dateFormat setDateFormat:@"E, MMM d, yyyy"];
//    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
//    [timeFormat setDateFormat:@"h:mm a"];
//   
//   
//    
//    
//    
//    
//    Fete* Fete1 = [[Fete alloc] initWithName:@"Glow Party"
//                                          flyer:[UIImage imageNamed:@"glowparty.jpg"]
//                                          promo:@"TeamAK Promotions"
//                                       location:@"Mira Lounge"
//                                           date:[dateFormat dateFromString:@"Saturday, April 21, 2015"]
//                                           time:[timeFormat dateFromString:@"10:00 pm"]
//                                        musicBy:[NSMutableArray arrayWithObjects: @"DJ Tunez", nil]
//                                          price:@"$5"
//                                       hashtags:nil];
//    
//    [self.Fetes addObject:Fete1];
//    
//    Fete* Fete2 = [[Fete alloc] initWithName:@"YB's All White Party"
//                                          flyer:[UIImage imageNamed:@"allwhite.jpg"]
//                                          promo:@"Team YB"
//                                       location:@"Santos Party House"
//                                           date:[dateFormat dateFromString:@"Wed, April 4, 2015"]
//                                           time:[timeFormat dateFromString:@"10:30 pm"]
//                                        musicBy:nil
//                                          price:@"Free"
//                                       hashtags:nil];
//    
//    [self.Fetes addObject:Fete2];
//    
//    
//    
//    Fete* Fete3 = [[Fete alloc] initWithName:@"DJ Tunez 4th Annual Taurus Party"
//                                          flyer:[UIImage imageNamed:@"taurus.jpg"]
//                                          promo:@"DJ Tunez Promotions"
//                                       location:@"Milk River"
//                                           date:[dateFormat dateFromString:@"Sat, May 9, 2015"]
//                                           time:[timeFormat dateFromString:@"10:30 pm"]
//                                        musicBy:nil
//                                          price:@"Free"
//                                       hashtags:nil];
//    
//    [self.Fetes addObject:Fete3];
//    
//    Fete * Fete4 = [[Fete alloc] initWithName:@"Glow Party"
//                                          flyer:[UIImage imageNamed:@"glowparty.jpg"]
//                                          promo:@"TeamAK Promotions"
//                                       location:@"Mira Lounge"
//                                           date:[dateFormat dateFromString:@"Saturday, April 21, 2015"]
//                                           time:[timeFormat dateFromString:@"10:00 pm"]
//                                        musicBy:nil
//                                          price:@"$5"
//                                       hashtags:nil];
//    
//    [self.Fetes addObject:Fete4];
//    
//    Fete * Fete5 = [[Fete alloc] initWithName:@"YB's All White Party"
//                                          flyer:[UIImage imageNamed:@"allwhite.jpg"]
//                                          promo:@"Team YB"
//                                       location:@"Santos Party House"
//                                           date:[dateFormat dateFromString:@"Wed, April 4, 2015"]
//                                           time:[timeFormat dateFromString:@"10:30 pm"]
//                                        musicBy:nil
//                                          price:@"Free"
//                                       hashtags:nil];
//    
//    [self.Fetes addObject:Fete5];
//    
//    
//    
//    Fete * Fete6 = [[Fete alloc] initWithName:@"DJ Tunez 4th Annual Taurus Party"
//                                          flyer:[UIImage imageNamed:@"taurus.jpg"]
//                                          promo:@"DJ Tunez Promotions"
//                                       location:@"Milk River"
//                                           date:[dateFormat dateFromString:@"Sat, May 9, 2015"]
//                                           time:[timeFormat dateFromString:@"10:30 pm"]
//                                        musicBy:nil
//                                          price:@"Free"
//                                       hashtags:nil];
//    
//    [self.Fetes addObject:Fete6];
//
//
//}
//
//
//@end
//
//
