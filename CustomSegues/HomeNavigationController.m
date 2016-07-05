//
//  HomeNavigationController.m
//  CustomSegues
//
//  Created by Vladimir Kalinichenko on 7/5/16.
//  Copyright © 2016 Pashutina-systems. All rights reserved.
//

#import "HomeNavigationController.h"
#import "MenuViewController.h"

static NSString *ShowMenuSegueIdentifier = @"ShowMenuSegue";
static NSString *HideMenuSegueIdentifier = @"HideMenuSegue";


typedef enum : NSUInteger {
    MenuStateHidden,
    MenuStateMoving,
    MenuStateActive
} MenuState;


@interface HomeNavigationController() <PresentableViewControllerDelegate>

@property (nonatomic, assign) MenuState menuState;
@property (nonatomic, weak) MenuViewController *menuVC; // Ну это грязный хак, как по мне... не допер как сделать норм, надо почитать есче.

@end


@implementation HomeNavigationController

#pragma mark - Menu actions
- (void)toggleMenu {
    switch (self.menuState) {
        case MenuStateMoving:
            // do nothing
            break;
        case MenuStateHidden:
            [self showMenu];
            break;
        case MenuStateActive:
            [self hideMenu];
            break;
    }
    
}

//- (void)showDataViewController {
//    self performSegueWithIdentifier:<#(nonnull NSString *)#> sender:<#(nullable id)#>
//}

- (void)showMenu {
    [self performSegueWithIdentifier:ShowMenuSegueIdentifier sender:self];
}

- (void)hideMenu {
#warning Сделать вот это нопмас щоб было
//    [self performSegueWithIdentifier:HideMenuSegueIdentifier sender:self]; не выходить так
    [self.menuVC hideMenuButtonPressed:nil];
}

#pragma mark - PresentableViewControllerDelegate
- (void)viewController:(UIViewController *)viewController viewWillAppear:(BOOL)animated {
    if([viewController isKindOfClass:[MenuViewController class]]) {
        self.menuState = MenuStateMoving;
    }
}

- (void)viewController:(UIViewController *)viewController viewDidAppear:(BOOL)animated {
    if([viewController isKindOfClass:[MenuViewController class]]) {
        self.menuState = MenuStateActive;
    }
}

- (void)viewController:(UIViewController *)viewController viewWillDisappear:(BOOL)animated {
    if([viewController isKindOfClass:[MenuViewController class]]) {
        self.menuState = MenuStateMoving;
    }
}

- (void)viewController:(UIViewController *)viewController viewDidDisappear:(BOOL)animated {
    if([viewController isKindOfClass:[MenuViewController class]]) {
        self.menuState = MenuStateHidden;
    }
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:ShowMenuSegueIdentifier]){
        MenuViewController *vc = (MenuViewController *)[segue destinationViewController];
        vc.delegate = self;
        self.menuVC = vc;
    }
}

- (IBAction)hideMenu:(UIStoryboardSegue *)sender {}

@end
