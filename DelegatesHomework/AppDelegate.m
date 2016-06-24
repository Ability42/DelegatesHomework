//
//  AppDelegate.m
//  DelegatesHomework
//
//  Created by Stepan Paholyk on 6/23/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Doctor.h"
#import "Friend.h"

@interface AppDelegate ()

// @property (strong, nonatomic) NSArray* patientHeap;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    Patient* patient1 = [[Patient alloc] init];
    patient1.name = @"Scott";
    patient1.temperature = 36.6f;
    patient1.symptom = headAche;
    patient1.puls = 132.4f;
    
    Patient* patient2 = [[Patient alloc] init];
    patient2.name = @"Tom";
    patient2.temperature = 38.6f;
    patient2.symptom = headAche;
    patient2.puls = 90.4f;

    Patient* patient3 = [[Patient alloc] init];
    patient3.name = @"Saymon";
    patient3.temperature = 40.4f;
    patient3.symptom = headAche;
    patient3.puls = 180.0f;

    Patient* patient4 = [[Patient alloc] init];
    patient4.name = @"Scally";
    patient4.temperature = 35.7f;
    patient4.symptom = headAche;
    patient4.puls = 110.4f;
    
    Friend* myFriend = [[Friend alloc] init];
    Friend* myCoworker = [[Friend alloc] init];
    Friend* myBoss = [[Friend alloc] init];
    Friend* mySecretary = [[Friend alloc] init];
    
    
    Doctor* drEric = [[Doctor alloc] init];
    
    NSArray* patientHeap = [[NSArray alloc] initWithObjects:patient1, patient2, patient3, patient4, nil];

    
    for (id fellow in patientHeap) {
        if (arc4random() % 2) {
            [fellow setDelegate:drEric];
        } else {
            [fellow setDelegate:myFriend];
        }
        [fellow feelsWorse];
    }
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
