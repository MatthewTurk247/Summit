//
//  SUMTableViewCell.h
//  SummIt
//
//  Created by Matthew Turk on 7/21/15.
//  Copyright (c) 2015 SummIt, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SUMTableViewCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *SVTTitleLabel;
@property (nonatomic, strong) IBOutlet UILabel *SVTDescriptionLabel;
@property (nonatomic, strong) IBOutlet UIImageView *SVTThumbImage;
@property (nonatomic, strong) IBOutlet UIImageView *SVTCreatorImageView;
@property (nonatomic, strong) IBOutlet UIImageView *SVTAdIndicatorPill;
@property (nonatomic, strong) IBOutlet UIView *SVTCellSeparator;
@property (nonatomic, strong) IBOutlet UIImageView *SVSourceWaterMark;

@end
