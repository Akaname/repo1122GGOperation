//
//  LoginPageViewController.m
//  goldenGate
//
//  Created by Antonio on 12/4/13.
//  Copyright (c) 2013 D.Sco.Ver. All rights reserved.
//

#import "LoginPageViewController.h"

@interface LoginPageViewController () <CommsDelegate>
@property (strong, nonatomic) IBOutlet UIButton *fbLoginButton;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *progressIndicator;

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
    [self.fbLoginButton addTarget:self action:@selector(isPressed:) forControlEvents:UIControlEventTouchDown];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)isPressed:(id)sender {
    [self.fbLoginButton setEnabled:NO];
    [self.progressIndicator startAnimating];
    [Comms login:self];
}

- (void) commsDidLogin:(BOOL)loggedIn {
    [self.fbLoginButton setEnabled:YES];
    [self.progressIndicator stopAnimating];
    if (loggedIn) {
        
        //[self performSegueWithIdentifier:<#(NSString *)#> sender:<#(id)#>];
    }
}

+ (void) getUserInstance:(PFUser *)userInstance {
    //self.user=userInstance;
}
@end
