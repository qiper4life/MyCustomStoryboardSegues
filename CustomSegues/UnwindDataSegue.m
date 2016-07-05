//
//  UnwindDataSegue.m
//  CustomSegues
//
//  Created by Vladimir Kalinichenko on 7/5/16.
//  Copyright © 2016 Pashutina-systems. All rights reserved.
//

#import "UnwindDataSegue.h"

@implementation UnwindDataSegue

- (void)perform {
    
    UIView *view1 = self.sourceViewController.navigationController.view;
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    
    [self.sourceViewController.navigationController beginAppearanceTransition:NO animated:YES];
    [self.sourceViewController.navigationController willMoveToParentViewController:nil];
    
    [UIView animateWithDuration:0.3f animations:^{
        view1.frame = CGRectOffset(view1.frame, 0, screenSize.height);
    } completion:^(BOOL finished) {
        [self.sourceViewController.navigationController endAppearanceTransition];
        [self.sourceViewController.navigationController.view removeFromSuperview];
        [self.sourceViewController.navigationController removeFromParentViewController];
        [self.sourceViewController.navigationController didMoveToParentViewController:nil];
    }];
}

@end
