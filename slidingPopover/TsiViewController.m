//
//  TsiViewController.m
//  slidingPopover
//
//  Created by Shafiq  on 12/25/12.
//  Copyright (c) 2012 Shafiq . All rights reserved.
//

#import "TsiViewController.h"

// for making view round
#import <QuartzCore/QuartzCore.h>

@interface TsiViewController ()

-(void)setRoundedView:(UIImageView *)roundedView toDiameter:(float)newSize;

@end

@implementation TsiViewController

- (id) init{
    self = [super init];
    if(self){
        // set view size
        self.view.frame = CGRectMake(0, 0, 300.0, 70.0);
    }

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.contentSizeForViewInPopover = CGRectMake(0,  0, 300.0, 70.0).size;
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];

    // make imageview rectangle
    [self setRoundedView:self.alertTypeImage toDiameter:50.0];
    self.alertTypeImage.backgroundColor = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setRoundedView:(UIImageView *)roundedView toDiameter:(float)newSize;
{
    CGPoint saveCenter = roundedView.center;
    CGRect newFrame = CGRectMake(roundedView.frame.origin.x, roundedView.frame.origin.y, newSize, newSize);
    roundedView.frame = newFrame;
    roundedView.layer.cornerRadius = newSize / 2.0;
    roundedView.center = saveCenter;
}

// Synthesize properties
@synthesize alertTypeImage;
@synthesize titleLabel;
@synthesize detailLabel;

@end
