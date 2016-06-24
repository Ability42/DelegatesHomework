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

- (void) patientFeelsBad:(Patient *)patient {
    NSLog(@"%@ patient feels bad", patient.name);
    
    if ((patient.temperature <= 37) && (patient.symptom == headAche)) {
        NSLog(@"%@ : You have an insomnia", patient.name);
        
    } else if ((patient.symptom == stomachAche) && (patient.puls <= 120.4f)) {
        NSLog(@"%@ : You have an diarrhea", patient.name);
        
    } else if ((patient.symptom == legAche) && (patient.puls >= 120)) {
        NSLog(@"%@ : You have an breaking leg", patient.name);
        
    } else if ((patient.symptom == handAche) || (patient.temperature >= 37.2f)) {
        NSLog(@"%@ : Don't worry, it's just a scratch", patient.name);
        
    } else {
        NSLog(@"%@, maybe you should go to dr. Gregory House", patient.name);
    }
}

@end
