//
//  Person.m
//  BMITime3
//
//  Created by Laurence Wingo on 1/4/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize heightInMeters, weightInKilos, age;

-(float)bodyMassIndex{
    
    
    
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
    
    
   // return weightInKilos / (heightInMeters * heightInMeters);
    
    
}



@end
