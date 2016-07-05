//
//  MenuViewController.m
//  CustomSegues
//
//  Created by Vladimir Kalinichenko on 7/5/16.
//  Copyright © 2016 Pashutina-systems. All rights reserved.
//

#import "MenuViewController.h"

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if([self.delegate respondsToSelector:@selector(viewController:viewWillAppear:)]) {
        [self.delegate viewController:self viewWillAppear:animated];
    }
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    if([self.delegate respondsToSelector:@selector(viewController:viewDidAppear:)]) {
        [self.delegate viewController:self viewDidAppear:animated];
    }
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    if([self.delegate respondsToSelector:@selector(viewController:viewWillDisappear:)]) {
        [self.delegate viewController:self viewWillDisappear:animated];
    }
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    if([self.delegate respondsToSelector:@selector(viewController:viewDidDisappear:)]) {
        [self.delegate viewController:self viewDidDisappear:animated];
    }
}

- (IBAction)hideMenuButtonPressed:(id)sender {
    [self performSegueWithIdentifier:@"HideMenuSegue" sender:self];
}

@end
