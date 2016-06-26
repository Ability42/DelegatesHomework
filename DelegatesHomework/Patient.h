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

typedef enum{
    oneStar,
    twoStar,
    threeStar,
    fourStar,
    fiveStar
}SPEstimate;

@protocol PatientDelegate; // define protocol

@interface Patient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) SPEstimate estimate;
@property (assign, nonatomic) BOOL satisfied;

@property (assign, nonatomic) float temperature;
@property (assign,nonatomic) float puls;

@property (assign, nonatomic) SPAche symptom;
@property (weak, nonatomic) id <PatientDelegate> delegate;

- (void) takePill;
- (void) makeShot;
- (void) feelsWorse;

@end

@protocol PatientDelegate <NSObject> // define protocol

- (void) patientFeelsBad:(Patient *) patient;
- (void) makeReport;


@end