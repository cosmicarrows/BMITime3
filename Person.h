//
//  Person.h
//  BMITime3
//
//  Created by Laurence Wingo on 1/4/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    
    int weightInKilos;
    float heightInMeters;
    int age;
    
}
@property float heightInMeters;
@property int weightInKilos;
@property int age;

-(float)bodyMassIndex;





@end
