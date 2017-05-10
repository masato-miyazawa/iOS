//
//  Prescription.m
//  PatientAndDoctor
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype)initWithSymptom: (Symptom) symptom
{
    self = [super init];
    if (self) {
        _symptom = symptom;
    }
    return self;
}

@end
