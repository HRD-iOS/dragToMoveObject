//
//  ViewController.h
//  DragToMove
//
//  Created by Yin Kokpheng on 11/17/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (weak, nonatomic) IBOutlet UIView *blueBox;

@end

