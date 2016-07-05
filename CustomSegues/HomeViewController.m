//
//  HomeViewController.m
//  CustomSegues
//
//  Created by Vladimir Kalinichenko on 7/5/16.
//  Copyright © 2016 Pashutina-systems. All rights reserved.
//

#import "HomeViewController.h"

static NSString *ShowDataSegueIdentifier = @"ShowDataSegue";

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setLeftBarButtonItemWithMenu];
}

#pragma mark - IBAction
- (IBAction)showDataScreenButtonPressed:(id)sender {
    [self performSegueWithIdentifier:ShowDataSegueIdentifier sender:sender];
}

#pragma mark - Navigation
- (IBAction)unwindFromSegue:(UIStoryboardSegue *)sender {
    
}

@end
