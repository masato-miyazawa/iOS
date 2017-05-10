//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;

- (instancetype)initWithName: (NSString *) name Specializantion:(NSString *) spec;
-(Boolean) acceptPatient: (Patient *) patient HealthCard:(Boolean) healthCard;
-(Boolean) prescribeMedication: (Patient *) patient;

@end
