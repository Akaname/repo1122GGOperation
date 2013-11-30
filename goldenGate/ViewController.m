//
//  ViewController.m
//  goldenGate
//
//  Created by Antonio on 11/29/13.
//  Copyright (c) 2013 D.Sco.Ver. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *emailLabel;
@property (nonatomic, strong) UIButton *myButton;
@property (nonatomic, strong) UITextField *myTextField;
@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UIButton *buttonSecond;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) Person * person;

@end

@implementation ViewController

- (void)viewDidLoad
{
    NSLog(@"TOPO");
    self.person = [[Person alloc] init];
    NSLog(@"GIGIO");
    
    [super viewDidLoad];
    
    CGRect textFieldFrame = CGRectMake(0.0f, 0.0f, 100.0f, 200.0f);
    
    // --------- Label ------------
//	CGRect labelFrame = CGRectMake(0.0f, 0.0f, 100.0f, 100.0f);
//    self.emailLabel = [[UILabel alloc] initWithFrame:labelFrame];
//    //self.emailLabel.numberOfLines = 3;
//    //self.emailLabel.lineBreakMode = NSLineBreakByWordWrapping;
//    self.emailLabel.text = @"insert email address";
//    self.emailLabel.font = [UIFont boldSystemFontOfSize:14.0f];
//    [self.emailLabel setTextColor:[UIColor orangeColor]];
//    self.emailLabel.center = self.view.center;
//    [self.view addSubview:self.emailLabel];
    
    // -------- Button -----------
//    self.myButton = [UIButton buttonWithType:UIButtonTypeSystem];
//    self.myButton.frame = CGRectMake(110.0f, 200.0f, 100.0f, 44.0f);
//    [self.myButton setTitle:@"Press me" forState:UIControlStateNormal];
//    [self.myButton setTitle:@"I am pressed" forState:UIControlStateHighlighted];
//    [self.myButton addTarget:self action:@selector(buttonIsPressed:) forControlEvents:UIControlEventTouchDown];
//    [self.myButton addTarget:self action:@selector(buttonIsTapped:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:self.myButton];
    
    // ---------- Text fields ----------
//    CGRect textFieldFrame = CGRectMake(0.0f, 0.0f, 200.0f, 31.0f);
//    self.myTextField = [[UITextField alloc] initWithFrame:textFieldFrame];
//    self.myTextField.borderStyle = UITextBorderStyleRoundedRect;
//    self.myTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
//    self.myTextField.textAlignment = NSTextAlignmentCenter;
//    self.myTextField.text = @"insert email";
//    self.myTextField.center = self.view.center;
//    [self.view addSubview:self.myTextField];
    
    
    [self.buttonSecond setTitle:@"Send" forState:UIControlStateNormal];
    [self.buttonSecond addTarget:self action:@selector(buttonIsPressed:) forControlEvents:UIControlEventTouchDown];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buttonIsPressed:(UIButton *)paramSender{
    NSLog(@"Button is pressed");
    [self.person initPFUser:self.usernameTextField.text withPassword:self.passwordTextField.text withEmail:self.emailTextField.text];
    NSLog(@"fatto");
//    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert" message:self.usernameTextField.text delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
//    [alertView show];
}
- (void) buttonIsTapped:(UIButton *)paramSender{
    NSLog(@"Button is tapped");
}

@end
