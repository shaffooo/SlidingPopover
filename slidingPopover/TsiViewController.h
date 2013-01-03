//
//  TsiViewController.h
//  slidingPopover
//
//  Created by Shafiq  on 12/25/12.
//  Copyright (c) 2012 Shafiq . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TsiViewController : UIViewController
{

    IBOutlet UIImage * _alertTypeImage;
    IBOutlet UILabel * _titleLabel;
    IBOutlet UILabel * _detailLabel;
}

@property (strong, nonatomic) IBOutlet UIImageView *alertTypeImage;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;



@end
