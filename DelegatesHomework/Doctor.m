//
//  Doctor.m
//  DelegatesHomework
//
//  Created by Stepan Paholyk on 6/24/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@protocol PatientDelegate;

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.reportContent = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (NSString *) defineIllnessFrom:(SPAche) symptom {
    NSString* tmpIll;
    if (symptom == headAche) {
        tmpIll = @"has an headache";
    } else if (symptom == handAche) {
        tmpIll = @"has a broken hand";
    } else if (symptom == legAche) {
        tmpIll = @"has a broken leg";
    } else if (symptom == stomachAche) {
        tmpIll = @"has a diarrhea";
    }
    return tmpIll;
}

- (void) patientFeelsBad:(Patient *)patient {
    NSLog(@"%@ feels bad", patient.name);
    
    if ((patient.temperature <= 37) && (patient.symptom == headAche)) {
        NSLog(@"%@, you have an insomnia", patient.name);
        
    } else if ((patient.symptom == stomachAche) && (patient.puls <= 120.4f)) {
        NSLog(@"%@, probably you have a diarrhea", patient.name);
        
    } else if ((patient.symptom == legAche) && (patient.puls >= 120)) {
        NSLog(@"%@, you have an breaking leg", patient.name);
        
    } else if ((patient.symptom == handAche) || (patient.temperature >= 37.2f)) {
        NSLog(@"%@, don't worry, it's just a scratch", patient.name);
        
    } else {
        NSLog(@"%@, maybe you should go to dr. Gregory House", patient.name);
    }
    
    [self.reportContent setObject:patient.name forKey:[self defineIllnessFrom:patient.symptom]];

}

- (void) makeReport {
    for (NSString* key in self.reportContent) {
        NSLog(@"%@ - %@", key, [self.reportContent objectForKey:key]);
    }
}

@end
