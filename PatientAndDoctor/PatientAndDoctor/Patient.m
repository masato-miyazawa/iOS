//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@interface Patient() {
    @private
    Boolean healthCard;
    NSMutableArray *prescriptions;
    
}
@end

@implementation Patient
// initialize arrays with explicit indices to make sure
// the string match the enums properly

NSString *const SymptomType_toString[] = {
    [cold] = @"Cold",
    [flu] = @"Flu",
    [adhd] = @"ADHD"
};

- (instancetype)initWithName: (NSString *) name Age:(NSInteger) age HealthCard:(Boolean) card
{
    self = [super init];
    if (self) {
        _name = name;
        _age  = age;
        healthCard = card;
        _symptom = (Symptom) (arc4random() % (int) adhd);
        prescriptions = [NSMutableArray array];
    }
    return self;
}

-(Boolean) visitDoctor: (Doctor *) doctor {
    return [doctor acceptPatient:self HealthCard: healthCard];
}

-(void) addPrescription: (Prescription *) prescription {
    [prescriptions addObject: prescription];
}

-(NSMutableArray *) getPrescription {
    return prescriptions;
}

-(void) requestMedication: (Doctor *) doctor {
    if ([doctor prescribeMedication: self]) {
        NSLog(@"GOT THE MEDICATION!");
    } else {
        NSLog(@"MEDICATION REJECTED!");
    }
}


-(NSString *)description {
    return [NSString stringWithFormat:@"Patient Information\nName: %@\nAge: %lu\nHealthCard: %@\nSymptom: %@\n", _name, _age, (healthCard) ? @"Valid" : @"Invalid", SymptomType_toString[_symptom]];
}

@end
