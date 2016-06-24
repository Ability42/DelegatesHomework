//
//  Patient.h
//  DelegatesHomework
//
//  Created by Stepan Paholyk on 6/23/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    headAche,
    stomachAche,
    legAche,
    handAche
}SPAche;
@protocol PatientDelegate; // define protocol

@interface Patient : NSObject

@property (strong, nonatomic) NSString* name;


@property (assign, nonatomic) float temperature;
@property (assign,nonatomic) float puls;
// Patients ache
@property (assign, nonatomic) SPAche symptom;
@property (weak, nonatomic) id <PatientDelegate> delegate;

- (void) takePill;
- (void) makeShot;
- (void) feelsWorse;

@end

@protocol PatientDelegate <NSObject> // define protocol

- (void) patientFeelsBad:(Patient *) patient;


@end