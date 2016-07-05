//
//  BaseViewController.h
//  CustomSegues
//
//  Created by Vladimir Kalinichenko on 7/5/16.
//  Copyright © 2016 Pashutina-systems. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeNavigationController.h"

@protocol PresentableViewControllerDelegate;


@interface BaseViewController : UIViewController

@property (nonatomic, weak) id<PresentableViewControllerDelegate> delegate;

- (HomeNavigationController *)homeNavigationController;

- (void)setLeftBarButtonItemWithMenu;

- (IBAction)menuButtonPressed:(id)sender;

@end


@protocol PresentableViewControllerDelegate <NSObject>

@optional
// Presented VC asks it's delegate (usually one who presented it in the first place) to handle its dismiss
- (void)viewController:(UIViewController *)viewController dismissAnimated:(BOOL)animated;

- (void)viewController:(UIViewController *)viewController viewWillAppear:(BOOL)animated;
- (void)viewController:(UIViewController *)viewController viewDidAppear:(BOOL)animated;
- (void)viewController:(UIViewController *)viewController viewWillDisappear:(BOOL)animated;
- (void)viewController:(UIViewController *)viewController viewDidDisappear:(BOOL)animated;

@end