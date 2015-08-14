//
//  SUMTableViewCell.h
//  SummIt
//
//  Created by Matthew Turk on 7/21/15.
//  Copyright (c) 2015 SummIt, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SUMTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *SVTTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *SVTDescriptionLabel;
@property (strong, nonatomic) IBOutlet UIImageView *SVTThumbImage;
@property (strong, nonatomic) IBOutlet UIImageView *SVTCreatorImageView;
@property (strong, nonatomic) IBOutlet UIView *SVTCellSeparator;
@property (strong, nonatomic) IBOutlet UIImageView *SVSourceWaterMark;
@property (strong, nonatomic) IBOutlet UILabel * SVTAgeLabel;
@property (strong, nonatomic) IBOutlet UILabel *SVTViewCountLabel;
@property (strong, nonatomic) IBOutlet UIView *view;
@property (strong, nonatomic) IBOutlet UIView *SVTAdIndicatorPillView;
@property (strong, nonatomic) IBOutlet UILabel *SVTAdIndicatorPillLabel;

@end
