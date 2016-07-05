//
//  ShowDataSegue.m
//  CustomSegues
//
//  Created by Vladimir Kalinichenko on 7/5/16.
//  Copyright © 2016 Pashutina-systems. All rights reserved.
//

#import "ShowDataSegue.h"

@implementation ShowDataSegue

- (void)perform
{
    CGFloat inset = 50;
    
    UIView *view1 = self.sourceViewController.view;
    UIView *view2 = self.destinationViewController.view;
    
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    view2.frame = CGRectMake(inset, screenSize.height - 64, screenSize.width - inset * 2, screenSize.height);
    
    if([self.sourceViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *nc = (UINavigationController *)[self sourceViewController];
        [view1 insertSubview:view2 belowSubview:nc.navigationBar];
    }else {
        [view1 addSubview:view2];
    }
    
    [self.sourceViewController addChildViewController:self.destinationViewController];
    [self.destinationViewController beginAppearanceTransition:YES animated:YES];
    [UIView animateWithDuration:0.3f animations:^{
        view2.frame = CGRectOffset(view2.frame, 0, - screenSize.height);
    } completion:^(BOOL finished) {
        [self.destinationViewController endAppearanceTransition];
        [self.destinationViewController didMoveToParentViewController:self.sourceViewController];
    }];
}

@end
