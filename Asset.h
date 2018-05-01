//
//  Asset.h
//  BMITime3
//
//  Created by Laurence Wingo on 1/7/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
    NSString *serialNumber;
}
@property (strong) NSString *label;
@property unsigned int resaleValue;
@property (strong) NSString *serialNumber;
@end
