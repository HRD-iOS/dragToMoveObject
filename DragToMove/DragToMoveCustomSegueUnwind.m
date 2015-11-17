//
//  DragToMoveCustomSegueUnwind.m
//  DragToMove
//
//  Created by Kokpheng on 11/17/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "DragToMoveCustomSegueUnwind.h"

@implementation DragToMoveCustomSegueUnwind
-(void)perform{
    UIView *snappingView = self.sourceViewController.view;
    UIView *dragToMoveView = self.destinationViewController.view;
    
    // Get the screen width and height.
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window insertSubview:dragToMoveView aboveSubview:snappingView];
    
    [UIView animateWithDuration:0.4 animations:^(void){
        dragToMoveView.frame = CGRectOffset(dragToMoveView.frame, 0.0, screenSize.height);
        snappingView.frame = CGRectOffset(snappingView.frame, 0.0, screenSize.height);
    
    } completion:^(BOOL finish){
        [self.sourceViewController dismissViewControllerAnimated:YES completion:nil];
    }];
}
@end
