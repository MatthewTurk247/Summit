//
//  SUMVideo.m
//  SummIt
//
//  Created by Matthew Turk on 7/5/15.
//  Copyright (c) 2015 SummIt, Inc. All rights reserved.
//

#import "SUMVideo.h"
@interface SUMVideo ()

@end

@implementation SUMVideo
//- (instancetype)initWithName:(NSArray *)titled:(NSArray *)creator
//- (instancetype)initWithName:(NSArray *)titled:(NSArray *)creator:(NSArray *)creatorImage:(NSArray *)vidImage {
//    if (self) {
//        self.SVTitle = titled;
//        self.SVCreator = creator;
//        self.SVCreatorImage = creatorImage;
//        self.SVImage = vidImage;
//    }
//    return self;
//}
- (instancetype)init {
    self = [super init];
    if (self) {
        self.SVTitle = @[@"Cadillac ATS 2015 Coupe", @"Samsung S6 Edge Review!", @"Can Birds Actually Deliver Messages?", @"How to Tie a Merovingian Knot | Men's Fashion", @"Neil deGrasse Tyson Explains The End Of 'Interstellar'", @"The Oort Cloud: Crash Course Astronomy #22", @"Koenigsegg Regera at Geneva 2015 | evo MOTOR SHOWS"];
        self.SVCreator = @[@"Cadillac", @"Marques Brownlee", @"ASAP Science", @"Howcast Men's Fashion", @"Business Insider", @"Crash Course", @"EVO"];
        self.SVImage = @[@"ats", @"s6", @"can", @"mero", @"tyson", @"oort", @"regera"];
        self.SVCreatorImage = @[@"cadillac", @"brownlee", @"asap", @"howcast", @"bi", @"cc", @"evo"];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

-(void)SVEnterFullScreen:(NSData*)video {
    
    
    
}

-(void)SVMinimizeVideo:(NSData*)video {
    
    
    
}

-(void)SVAlterVideoQuality:(NSData *)videoQuality {
    
    
    
}

-(void)SVReportVideo:(NSData *)video {
    
    
    
}

-(void)SVEnableCaptions:(NSData *)captions withLogic:(bool *)areCaptionsAvailable {
    
    areCaptionsAvailable = self.SVAreCaptionsAvailable;
    captions = self.SVCaptions;
    
}

-(void)SVDisableCaptions:(NSData *)captions withLogic:(bool *)areCaptionsAvailable {
    
    areCaptionsAvailable = self.SVAreCaptionsAvailable;
    captions = self.SVCaptions;
    
}

@end