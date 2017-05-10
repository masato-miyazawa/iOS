//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@interface Doctor()
{
    @private
    NSMutableArray *patientList;
}
-(NSMutableDictionary *) prescriptions;
@end

@implementation Doctor


- (instancetype)initWithName: (NSString *) name Specializantion:(NSString *) spec
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = spec;
        patientList = [NSMutableArray array];
        
    }
    return self;
}

-(Boolean) acceptPatient: (Patient *) patient HealthCard:(Boolean) healthCard {
    if (healthCard) {
        [patientList addObject:patient];
        NSLog(@"Successfully added to the patient list.");
        return true;
    } else {
        NSLog(@"Invalid HealthCard.");
        return false;
    }
}

-(NSMutableDictionary *) prescriptions {
    static NSMutableDictionary *thePrescriptions = nil;
    if (thePrescriptions == nil) {
        thePrescriptions = [NSMutableDictionary dictionary];
    }
    return thePrescriptions;
}

-(Boolean) prescribeMedication: (Patient *) patient {
    if ([patientList containsObject:patient]) {
        NSLog(@"Medication on the way!");
        Symptom symptom = [patient symptom];
        Prescription *prescription = [[Prescription alloc] initWithSymptom:symptom];
        [patient addPrescription:prescription];
        [[self prescriptions] setObject: [patient getPrescription] forKey:[patient name]];
        NSLog(@"%@", [NSString stringWithFormat:@"Here is medication for %@", SymptomType_toString[symptom]]);
        
        return true;
    } else {
        NSLog(@"Not in my patient list!");
        return false;
    }
}


@end
