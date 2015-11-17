//
//  SnappingViewController.m
//  DragToMove
//
//  Created by Kokpheng on 11/17/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "SnappingViewController.h"

@interface SnappingViewController ()

@end

@implementation SnappingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Initialize the animator.
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    CGPoint touchPoint = [[touches anyObject] locationInView:self.view];
    
    if (self.snapBehaviour != nil) {
        [self.animator removeBehavior:self.snapBehaviour];
    }
    
    self.snapBehaviour = [[UISnapBehavior alloc]initWithItem:self.redBox snapToPoint:touchPoint];
    self.snapBehaviour.damping = 0.3;
    [self.animator addBehavior:self.snapBehaviour];
    
}
- (IBAction)showDragToMoveView:(id)sender {
    [self performSegueWithIdentifier:@"snappingUnwindSegue" sender:self];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
