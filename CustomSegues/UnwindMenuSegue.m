//
//  UnwindMenuSegue.m
//  CustomSegues
//
//  Created by Vladimir Kalinichenko on 7/5/16.
//  Copyright © 2016 Pashutina-systems. All rights reserved.
//

#import "UnwindMenuSegue.h"

@implementation UnwindMenuSegue

- (void)perform {
    
    UIView *view1 = self.sourceViewController.view;
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    
    [self.sourceViewController beginAppearanceTransition:NO animated:YES];
    [self.sourceViewController willMoveToParentViewController:nil];
    
    [UIView animateWithDuration:0.3f animations:^{
        view1.frame = CGRectOffset(view1.frame, -screenSize.width * 0.7, 0);
    } completion:^(BOOL finished) {
        [self.sourceViewController endAppearanceTransition];
        [self.sourceViewController.view removeFromSuperview];
        [self.sourceViewController removeFromParentViewController];
        [self.sourceViewController didMoveToParentViewController:nil];
    }];
}

@end
