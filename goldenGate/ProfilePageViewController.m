//
//  ProfilePageViewController.m
//  goldenGate
//
//  Created by Antonio on 12/5/13.
//  Copyright (c) 2013 D.Sco.Ver. All rights reserved.
//

#import "ProfilePageViewController.h"
#import "FBProfilePicture.h"

@interface ProfilePageViewController ()
@property (strong, nonatomic) IBOutlet FBProfilePicture *profilePicture;
@property (strong, nonatomic) IBOutlet UILabel *userNameLabel;

@end

@implementation ProfilePageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void) populateUserDetails
{
    if (FBSession.activeSession.isOpen) {
        [[FBRequest requestForMe] startWithCompletionHandler:^(FBRequestConnection *connection, NSDictionary<FBGraphUser> *user, NSError *error) {
            if (!error) {
                self.userNameLabel.text = user.name;

            }
        }];
    }
}

@end
