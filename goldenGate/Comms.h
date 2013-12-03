//
//  Comms.h
//  goldenGate
//
//  Created by Antonio on 12/4/13.
//  Copyright (c) 2013 D.Sco.Ver. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CommsDelegate <NSObject>
@optional
-(void) commsDidLogin:(BOOL)loggedIn;
@end


@interface Comms : NSObject
+(void) login:(id<CommsDelegate>)delegate;
@end
