//
//  Friend.m
//  DelegatesHomework
//
//  Created by Stepan Paholyk on 6/24/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "Friend.h"

@protocol PatientDelegate;

@implementation Friend

- (void) patientFeelsBad:(Patient *)patient {
    NSLog(@"%@: I have a bad news for you", patient.name);
}

- (void) makeReport {
    NSLog(@"I'm bad doctor, so i didn't make any report here");
}


@end
