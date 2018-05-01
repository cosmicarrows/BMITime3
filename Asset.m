//
//  Asset.m
//  BMITime3
//
//  Created by Laurence Wingo on 1/7/13.
//  Copyright (c) 2013 Laurence Wingo. All rights reserved.
//

#import "Asset.h"

@implementation Asset
@synthesize label, resaleValue, serialNumber;
-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
}
-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
