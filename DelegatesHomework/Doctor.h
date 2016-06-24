//
//  Doctor.h
//  DelegatesHomework
//
//  Created by Stepan Paholyk on 6/24/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"


@protocol PatientDelegate;

@interface Doctor : NSObject <PatientDelegate>

@end
