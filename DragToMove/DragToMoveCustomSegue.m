//
//  DragToMoveCustomSegue.m
//  DragToMove
//
//  Created by Kokpheng on 11/17/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "DragToMoveCustomSegue.h"

@implementation DragToMoveCustomSegue

-(void)perform{
   UIView *dragToMoveView = self.sourceViewController.view;
    UIView *snappingView = self.destinationViewController.view;

    // Get the screen width and height.
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    
    snappingView.frame =  CGRectMake(0.0, screenSize.height, screenSize.width, screenSize.height);
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window insertSubview:snappingView aboveSubview:dragToMoveView];

    [UIView animateWithDuration:0.4 animations:^(void){
        dragToMoveView.frame = CGRectOffset(dragToMoveView.frame, 0.0, -screenSize.height);
        snappingView.frame = CGRectOffset(snappingView.frame, 0.0, -screenSize.height);
    
    } completion:^(BOOL finish){
        [self.sourceViewController presentViewController:self.destinationViewController animated:FALSE completion:nil];
    
    }];

}
@end
