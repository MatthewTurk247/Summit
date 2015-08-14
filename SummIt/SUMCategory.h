//
//  SUMCategory.h
//  SummIt
//
//  Created by Matthew Turk on 7/21/15.
//  Copyright (c) 2015 SummIt, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SUMVideo.h"

@class SUMVideo;

@interface SUMCategory : NSObject
@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) SUMVideo *vids;
+(SUMCategory *)videos;
@end
