//
//  Person.m
//  goldenGate
//
//  Created by Antonio on 11/30/13.
//  Copyright (c) 2013 D.Sco.Ver. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize user;

- (void) initPFUser:(NSString *)username withPassword:(NSString *)password withEmail:(NSString *)email{
    user = [PFUser user];
    
    user.username = username;
    user.password = password;
    user.email = email;
    
    NSLog(@"Person: %@ \n Username: %@ \n Email: %@", user.username, user.password, user.email);
    
    
    
}
@end
