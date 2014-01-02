//
//  Comms.m
//  goldenGate
//
//  Created by Antonio on 12/4/13.
//  Copyright (c) 2013 D.Sco.Ver. All rights reserved.
//

#import "Comms.h"

@implementation Comms
+ (void) fbLogin:(id<CommsDelegate>)delegate
{
	[PFFacebookUtils logInWithPermissions:nil block:^(PFUser *user, NSError *error) {
		// Was login successful ?
		if (!user) {
			if (!error) {
                NSLog(@"The user cancelled the Facebook login.");
            } else {
                NSLog(@"An error occurred: %@", error.localizedDescription);
            }
            
			// Callback - login failed
			if ([delegate respondsToSelector:@selector(commsDidLogin:)]) {
				[delegate commsDidLogin:NO];
			}
		} else {
			if (user.isNew) {
				NSLog(@"User signed up and logged in through Facebook!");
                
			} else {
				NSLog(@"User logged in through Facebook!");
			}
            
			// Callback - login successful
			if ([delegate respondsToSelector:@selector(commsDidLogin:)]) {
				[delegate commsDidLogin:YES];
			}
		}
	}];
}

+ (void) twLogin{
    [PFTwitterUtils logInWithBlock:^(PFUser *user, NSError *error) {
        if (!user) {
            NSLog(@"The user cancelled the twitter login");
            return;
        }
        else if (user.isNew){
            NSLog(@"user signed up and logged in with Twitter");
        }
        else {
            NSLog(@"user logged in with twitter");
        }
    }];
}
@end
