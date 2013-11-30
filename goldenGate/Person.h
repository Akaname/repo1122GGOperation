//
//  Person.h
//  goldenGate
//
//  Created by Antonio on 11/30/13.
//  Copyright (c) 2013 D.Sco.Ver. All rights reserved.
//

#import <Parse/Parse.h>

@interface Person : PFObject
@property (nonatomic, strong) PFUser * person;


- (void) initPFUser:(NSString *)username withPassword:(NSString *)password withEmail:(NSString *)email;
@end
