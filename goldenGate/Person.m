//
//  Person.m
//  goldenGate
//
//  Created by Antonio on 12/6/13.
//  Copyright (c) 2013 D.Sco.Ver. All rights reserved.
//

#import "Person.h"
#import <Parse/PFObject+Subclass.h>

@implementation Person

@synthesize personId;
@synthesize firstName;
@synthesize lastName;

+(NSString *)parseClassName {
    return @"Person";
}

@end
