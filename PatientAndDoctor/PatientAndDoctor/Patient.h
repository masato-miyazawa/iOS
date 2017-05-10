//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"

@class Doctor;

@interface Patient : NSObject

@property NSInteger age;
@property NSString *name;
@property Symptom symptom;

- (instancetype)initWithName: (NSString *) name Age:(NSInteger) age HealthCard:(Boolean) card;
-(Boolean) visitDoctor: (Doctor *) doctor;
-(void) requestMedication: (Doctor *) doctor;
-(NSMutableArray *) getPrescription;
-(void) addPrescription: (Prescription *) prescription;
extern NSString * const SymptomType_toString[];

@end
