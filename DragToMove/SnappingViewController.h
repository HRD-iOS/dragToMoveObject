//
//  SnappingViewController.h
//  DragToMove
//
//  Created by Kokpheng on 11/17/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SnappingViewController : UIViewController

@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (weak, nonatomic) IBOutlet UIView *redBox;

@property (strong, nonatomic) UISnapBehavior *snapBehaviour;
@end
