//
//  Person.h
//  goldenGate
//
//  Created by Antonio on 11/30/13.
//  Copyright (c) 2013 D.Sco.Ver. All rights reserved.
//

#import <Parse/Parse.h>

@interface Person : NSObject    
@property (nonatomic, strong) PFUser * user;


- (void) initPFUser:(NSString *)username withPassword:(NSString *)password withEmail:(NSString *)email;
@end
