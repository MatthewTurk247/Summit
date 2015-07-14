//
//  SUMUser.m
//  SummIt
//
//  Created by Matthew Turk on 7/6/15.
//  Copyright (c) 2015 SummIt, Inc. All rights reserved.
//

#import "SUMUser.h"

@interface SUMUser ()

@property(nonatomic, weak) NSNumber *SUDevice; //This number will represent the UIUserInterfaceIdiom number for the users device. -Matthew Turk
@property(nonatomic, strong) NSUserDefaults *SUPreferredSettings; //Will use NSUserDefaults to store certain settings chosen by the user. When SummIt is out of beta this info won't be saved locally by in Parse or some backend. -Matthew Turk

@end

@implementation SUMUser

@end
