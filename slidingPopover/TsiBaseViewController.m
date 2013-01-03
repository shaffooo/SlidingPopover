//
//  TsiBaseViewController.m
//  slidingPopover
//
//  Created by Shafiq  on 1/3/13.
//  Copyright (c) 2013 Shafiq . All rights reserved.
//

#import "TsiBaseViewController.h"



@interface TsiBaseViewController ()

- (void) showInfoAlertPopoverWithMessage: (NSString*) message;

@end

@implementation TsiBaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)popoverBtnClicked:(id)sender {
    NSLog(@"Btn clicked...");
    
    [self showInfoAlertPopoverWithMessage:@"alert details...."];
    
}

- (void) showInfoAlertPopoverWithMessage: (NSString*) message {
    
    // dismiss popover if already exist
    if(self.infoPopover)
        [self.infoPopover dismissPopoverAnimated:YES];
    
    // otherwise show it
    if (_infoDialog == nil) {
        
            NSLog(@"TsiBaseViewController::showInfoAlertPopoverWithMessage() _infoDialog was nil, instantiating it..");
        
        UIStoryboard * storybd = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
        
        self.infoDialog = (TsiViewController*)[storybd instantiateViewControllerWithIdentifier:@"customPopover"];
        
        self.infoDialog.titleLabel.text = @"Alert";
        self.infoDialog.detailLabel.text = message;
        
        if(self.infoDialog == nil){
            
            NSLog(@"TsiBaseViewController::showInfoAlertPopoverWithMessage( self.infoDialog is still nil.");
            return;
        }
        
        self.infoPopover = [[[UIPopoverController alloc]
                             initWithContentViewController:self.infoDialog] autorelease];
    }
    
    // show it at a specific location
    CGRect whereRect = CGRectMake(self.view.frame.size.width, 0.0, 1.0, 1.0);
    [self.infoPopover presentPopoverFromRect: whereRect inView:self.view permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
    
}


@synthesize popOverButton;

@synthesize infoDialog;
@synthesize infoPopover;

@end
