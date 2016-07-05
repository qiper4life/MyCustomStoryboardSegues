//
//  DataViewController.m
//  CustomSegues
//
//  Created by Vladimir Kalinichenko on 7/5/16.
//  Copyright © 2016 Pashutina-systems. All rights reserved.
//

#import "DataViewController.h"

static NSString *CloseDataSegueIdentifier = @"HideDataSegue";

@implementation DataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self setLeftBarButtonItemWithMenu];
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

- (IBAction)goToPreviosScreenButtonPressed:(id)sender {
    
    [self performSegueWithIdentifier:CloseDataSegueIdentifier sender:sender];
}

@end
