//
//  CosmicViewController.m
//  Cosmic
//
//  Created by David Kirkby on 3/11/13.
//  Copyright (c) 2013 David Kirkby. All rights reserved.
//

#import "CosmicViewController.h"
#import "CosmicBrain.h"

@interface CosmicViewController ()
@property (nonatomic,strong) CosmicBrain *brain;
@property (nonatomic,strong) UIImage *displayImage;
@end

@implementation CosmicViewController

- (CosmicBrain *)brain
{
    if(!_brain) _brain = [[CosmicBrain alloc] init];
    return _brain;
}

- (UIImage*)displayImage
{
    if(!_displayImage) _displayImage = [[UIImage alloc] init];
    return _displayImage;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.brain initCapture];
    self.exposureCountLabel.text = @"0";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goButtonPressed:(UIButton *)sender {
    NSLog(@"go!");
    [self.brain captureImage];
}

@end
