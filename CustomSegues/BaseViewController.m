//
//  BaseViewController.m
//  CustomSegues
//
//  Created by Vladimir Kalinichenko on 7/5/16.
//  Copyright © 2016 Pashutina-systems. All rights reserved.
//

#import "BaseViewController.h"

@implementation BaseViewController

- (HomeNavigationController *)homeNavigationController {
    if([self.navigationController isKindOfClass:[HomeNavigationController class]]) {
        return (HomeNavigationController *)self.navigationController;
    }
    return nil;
}

- (void)setLeftBarButtonItemWithMenu {
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Menu" style:UIBarButtonItemStylePlain target:self action:@selector(menuButtonPressed:)];
}


#pragma mark - Navigation
- (IBAction)menuButtonPressed:(id)sender {
    if([self.homeNavigationController respondsToSelector:@selector(toggleMenu)]){
        [self.homeNavigationController toggleMenu];
    }
}


@end
