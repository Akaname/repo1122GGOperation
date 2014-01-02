//
//  ProfilePageViewController.m
//  goldenGate
//
//  Created by Antonio on 12/5/13.
//  Copyright (c) 2013 D.Sco.Ver. All rights reserved.
//

#import "ProfilePageViewController.h"


@interface ProfilePageViewController () <NSURLConnectionDelegate>

@property (strong, nonatomic) IBOutlet UILabel *userNameLabel;
@property (strong, nonatomic) Person * person;
@property (strong, nonatomic) IBOutlet FBProfilePictureView *profilePicture;


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
    self.person=[[Person alloc]init];
    [self populateUserDetails];
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
                self.userNameLabel.text = user.last_name;
                self.person.personId = user.id;
                self.profilePicture.profileID=self.person.personId;             //sets up the profile picture of facebook
                NSLog(@"%@", self.person.personId);
            }
        }];
        
        //self.profilePicture.profileID=self.person.personId;
//        NSURL *profileURL = [NSURL URLWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?type=large&return_ssl_resources=1", self.person.personId]];
//        NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:profileURL cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:2.0f];
//        NSURLConnection *urlConnection = [[NSURLConnection alloc]initWithRequest:urlRequest delegate:self];
        
    }
}

- (void) connection:(NSURLConnection *) connection didReceiveData:(NSData *)data {

}

- (void) connectionDidFinishLoading:(NSURLConnection *)connection{
    
}

@end
