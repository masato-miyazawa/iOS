//
//  Prescription.h
//  PatientAndDoctor
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescription : NSObject

typedef enum { cold = 0, flu, adhd } Symptom;
@property Symptom symptom;
- (instancetype)initWithSymptom: (Symptom) symptom;

@end
