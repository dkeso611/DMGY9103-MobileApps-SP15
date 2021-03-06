//
//  AppDelegate.m
//  Fête
//
//  Created by Kes on 4/1/15.
//  Copyright (c) 2015 Suru Media. All rights reserved.
//

#import "AppDelegate.h"
#import <Parse/Parse.h>
#import <Firebase/Firebase.h>
#import <SSBouncyButton/SSBouncyButton.h>


@interface AppDelegate ()

@end


@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Parse enableLocalDatastore];
    
     //Initialize Parse.
    [Parse setApplicationId:@"UCmpDOpM6VJcGqlqji7Si3MGBiIty6D21BZGx48D"
                  clientKey:@"Ar6tPjxyoaFjEICE5kLx8SI4FpDFdcMuDQPcv38x"];
    
    
    
     //[Optional] Track statistics around application opens.
//    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    
    
    // ...
    
//    // Create a reference to a Firebase location
//    Firebase *myRootRef = [[Firebase alloc] initWithUrl:@"https://fete.firebaseio.com"];
//    
//    // Write data to Firebase
//    [myRootRef setValue:@"Do you have data? You'll love Firebase."];
//    
//    // Read data and react to changes
//    [myRootRef observeEventType:FEventTypeValue withBlock:^(FDataSnapshot *snapshot) {
//        NSLog(@"%@ -> %@", snapshot.key, snapshot.value);
//    }];
    

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
