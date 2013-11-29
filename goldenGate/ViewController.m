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

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	CGRect labelFrame = CGRectMake(0.0f, 0.0f, 100.0f, 100.0f);
    self.emailLabel = [[UILabel alloc] initWithFrame:labelFrame];
    //self.emailLabel.numberOfLines = 3;
    //self.emailLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.emailLabel.text = @"insert email address";
    self.emailLabel.font = [UIFont boldSystemFontOfSize:14.0f];
    [self.emailLabel setTextColor:[UIColor orangeColor]];
    self.emailLabel.center = self.view.center;
    [self.view addSubview:self.emailLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
