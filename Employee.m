//
//  Employee.m
//  BMITime3
//
//  Created by Laurence Wingo on 1/5/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee
@synthesize employeeID;
-(float)bodyMassIndex{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}
-(void)addAnAssetToEmployeeLaptopBag:(Asset *)a
{
    //Is laptopBagOfAssets nil or non-existant in memory?  If so create it
    if (!laptopBagOfAssets) {
        //Create the array
        laptopBagOfAssets = [[NSMutableArray alloc]init];
    }
    [laptopBagOfAssets addObject:a];
}
-(unsigned int)valueOfAssetsInLaptopBag
{
    //sum up the resale value of the assets in the laptop bag
    unsigned int monetarySumOfAssetsInLaptopBag = 0;
    for (Asset *a in laptopBagOfAssets) {
        monetarySumOfAssetsInLaptopBag += [a resaleValue]; ///says add up assets in array and assign to monetarySumOfAssetsInLaptopBag
    }
    return monetarySumOfAssetsInLaptopBag;
    
    }
-(NSString *)description
{
    return [NSString stringWithFormat:@"Employee %d: $%d in assets", [self employeeID], [self valueOfAssetsInLaptopBag]];
}
-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
