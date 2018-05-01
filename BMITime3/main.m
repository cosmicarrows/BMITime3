//
//  main.m
//  BMITime3
//
//  Created by Laurence Wingo on 1/4/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        Person *person = [[Person alloc]init];
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setAge:31];
        float personBMI = [person bodyMassIndex];
        NSLog(@"Person has a BMI of %f and they are only %d", personBMI, person.age);
        
        Employee *accountant = [[Employee alloc]init];
        [accountant setWeightInKilos:85];
        [accountant setHeightInMeters:1.7];
        [accountant setAge:27];
        float accountantBMI = [accountant bodyMassIndex];
        [accountant setEmployeeID:346578463];
        NSLog(@"Our accountant has a BMI of %f and they are only %d!  Here's they're employer ID: #%d", accountantBMI, [accountant age], [accountant employeeID]);
        
        // create array to hold computer programmer employees objects
        NSMutableArray *computerProgrammerEmployees = [[NSMutableArray alloc]init];
        for (int i = 0; i < 10; i++) {
            Employee *programmer = [[Employee alloc]init];
            [programmer setWeightInKilos:90 + i];
            [programmer setHeightInMeters:1.8 - i/10.0];
            [programmer setEmployeeID:346578464 + i];
            
            // put the newly created programmers into the computerProgrammerEmployees array
            [computerProgrammerEmployees addObject:programmer];
        }
        
        // create 10 assets to go into the laptop bags of the programmers
        for (int i = 0; i < 10; i++) {
            // create an asset
            Asset *macbook = [[Asset alloc]init];
            
            // give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [macbook setLabel:currentLabel];
            [macbook setResaleValue:i * 1];
            // get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [computerProgrammerEmployees count];
            // find that employee
            Employee *randomComputerProgrammerEmployee = [computerProgrammerEmployees objectAtIndex:randomIndex];
            // Assign the asset to the employee
            [randomComputerProgrammerEmployee addAnAssetToEmployeeLaptopBag:macbook];
            
        }
        
        NSLog(@"Employees: %@", computerProgrammerEmployees);
        NSLog(@"Giving up ownership of ownership of one employee");
        [computerProgrammerEmployees removeObjectAtIndex:5];
        NSLog(@"Giving up ownership of employees array");
        computerProgrammerEmployees = nil;
        
        
        
        
        
    }
    return 0;
}

