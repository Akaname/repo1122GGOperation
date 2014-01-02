//
//  LoginPageViewController.m
//  goldenGate
//
//  Created by Antonio on 12/4/13.
//  Copyright (c) 2013 D.Sco.Ver. All rights reserved.
//

#import "LoginPageViewController.h"

@interface LoginPageViewController () <CommsDelegate>
@property (strong, nonatomic) IBOutlet UIButton *signInButton;
@property (strong, nonatomic) IBOutlet UIButton *registerButton;
@property (strong, nonatomic) IBOutlet UIButton *fbLoginButton;
@property (strong, nonatomic) IBOutlet UIButton *twLoginButton;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *progressIndicator;
@property (strong, nonatomic) Person *person;
@end

@implementation LoginPageViewController

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
    // Do any additional setup after loading the view from its nib.
    [self.fbLoginButton addTarget:self action:@selector(fbIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.twLoginButton addTarget:self action:@selector(twIsPressed:) forControlEvents:UIControlEventTouchDown];
    
    [self.registerButton.layer setBorderWidth:1.0];
    [self.registerButton.layer setBorderColor:[[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] CGColor]];
    self.registerButton.layer.cornerRadius=10;
    
    [self.signInButton.layer setBorderWidth:1.0];
    [self.signInButton.layer setBorderColor:[[UIColor redColor] CGColor]];
    self.signInButton.layer.cornerRadius=10;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)fbIsPressed:(id)sender {
    [self.fbLoginButton setEnabled:NO];
    [self.progressIndicator startAnimating];
    [Comms fbLogin:self];
}

- (IBAction)twIsPressed:(id)sender {
    [self.twLoginButton setEnabled:NO];
    [self.progressIndicator startAnimating];
    [Comms twLogin];
    //LOGIN
}

- (void) commsDidLogin:(BOOL)loggedIn {
    [self.fbLoginButton setEnabled:YES];
    [self.progressIndicator stopAnimating];
    if (loggedIn) {
        [[FBRequest requestForMe] startWithCompletionHandler:^(FBRequestConnection *connection, NSDictionary<FBGraphUser> *user, NSError *error) {
            
            self.person.personId = user.id;
            self.person.firstName = user.first_name;
            self.person.lastName = user.last_name;
            
        }];
        [self performSegueWithIdentifier:@"loadProfilePageTest" sender:self];
    }
}

- (void) getUserInstance:(Person *)userInstance {
    self.person=userInstance;
}
@end
