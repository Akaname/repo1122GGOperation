//
//  Person.h
//  goldenGate
//
//  Created by Antonio on 12/6/13.
//  Copyright (c) 2013 D.Sco.Ver. All rights reserved.
//

#import <Parse/Parse.h>

@interface Person : PFObject <PFSubclassing>
@property (nonatomic, strong) NSString * personId;
@property (nonatomic, strong) NSString * firstName;
@property (nonatomic, strong) NSString * lastName;
+ (NSString *)parseClassName;

@end
