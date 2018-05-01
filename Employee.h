//
//  Employee.h
//  BMITime3
//
//  Created by Laurence Wingo on 1/5/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person{
    int employeeID;
    NSMutableArray *laptopBagOfAssets;
}
@property int employeeID;
-(void)addAnAssetToEmployeeLaptopBag:(Asset *)a;
-(unsigned int)valueOfAssetsInLaptopBag;

@end
