//
//  ViewController.m
//  DragToMove
//
//  Created by Yin Kokpheng on 11/17/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "ViewController.h"
#import "DragToMoveCustomSegueUnwind.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Initialize the animator.
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    CGPoint touchPoint = [[touches anyObject] locationInView:self.view];
    [self.blueBox setCenter: touchPoint];
}
- (IBAction)shopSnappingView:(id)sender {
    [self performSegueWithIdentifier:@"snappingSegue" sender:self];
}

-(IBAction) returnFromSegueActions:(UIStoryboardSegue *)sender{
    if ([sender.identifier isEqualToString:@"snappingUnwindSegue"]) {
        UIColor *originalColor = self.view.backgroundColor;
        self.view.backgroundColor = [UIColor redColor];
        [UIView animateWithDuration:1.0 animations:^(void){
            self.view.backgroundColor = originalColor;
        }];
    }
}


-(UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier{
    
    if ([identifier isEqualToString:@"snappingUnwindSegue"]) {
        DragToMoveCustomSegueUnwind *unwindSegue = [[DragToMoveCustomSegueUnwind alloc]initWithIdentifier:@"snappingUnwindSegue" source:fromViewController destination:toViewController];
        return unwindSegue;
    }
return  [self segueForUnwindingToViewController:toViewController fromViewController:fromViewController identifier:@"snappingUnwindSegue"];
}

@end
