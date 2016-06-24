//
//  Patient.m
//  DelegatesHomework
//
//  Created by Stepan Paholyk on 6/23/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "Patient.h"

@implementation Patient;

- (void) takePill {
    NSLog(@"%@ take a pill", self.name);
}

- (void) makeShot {
    NSLog(@"%@ make a shot", self.name);
}

- (void) feelsWorse {
    [self.delegate patientFeelsBad:self];
}

@end
