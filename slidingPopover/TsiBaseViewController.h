//
//  TsiBaseViewController.h
//  slidingPopover
//
//  Created by Shafiq  on 1/3/13.
//  Copyright (c) 2013 Shafiq . All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TsiViewController.h"

@interface TsiBaseViewController : UIViewController
{

    IBOutlet UIButton * _popOverButton;
    
    TsiViewController *_infoDialog;
    UIPopoverController *_infoPopover;
    
}

@property (strong, nonatomic) IBOutlet UIButton *popOverButton;


@property (nonatomic, strong) TsiViewController *infoDialog;
@property (nonatomic, retain) UIPopoverController *infoPopover;

- (IBAction)popoverBtnClicked:(id)sender;


@end
