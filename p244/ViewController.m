//
//  ViewController.m
//  p244
//
//  Created by SDT-1 on 2014. 1. 7..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ballImage;

@end

@implementation ViewController

-(IBAction)handleRotate:(UIRotationGestureRecognizer *)gesture{
    self.ballImage.transform = CGAffineTransformRotate(self.ballImage.transform, gesture.rotation);
    [gesture setRotation:0.0];
}
-(void)handlePan:(UIPanGestureRecognizer *)gesture{
    CGPoint point = [gesture locationInView:self.view];
    self.ballImage.center = point;
}

-(void)handlePinch:(UIPinchGestureRecognizer *)gesture{
    CGFloat scale = gesture.scale;
    self.ballImage.transform = CGAffineTransformScale(self.ballImage.transform, scale, scale);
    [gesture setScale:1.0];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIRotationGestureRecognizer *rotate = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(handleRotate:)];
    [self.ballImage addGestureRecognizer:rotate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
