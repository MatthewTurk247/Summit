//
//  SUMVideo.m
//  SummIt
//
//  Created by Matthew Turk on 7/5/15.
//  Copyright (c) 2015 SummIt, Inc. All rights reserved.
//

#import "SUMVid.h"
@interface SUMVid ()

@end

@implementation SUMVid

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.SVTitle = @[@"The Surface", @"Samsung S6 Edge Review!", @"Can Birds Actually Deliver Messages?", @"How to Tie a Merovingian Knot | Men's Fashion", @"Neil deGrasse Tyson Explains The End Of 'Interstellar'", @"The Oort Cloud: Crash Course Astronomy #22", @"Koenigsegg Regera at Geneva 2015 | evo MOTOR SHOWS"];
        self.SVDescription = @[@"Microsoft", @"Marques Brownlee", @"ASAP Science", @"Howcast Men's Fashion", @"Business Insider", @"Crash Course", @"EVO"];
        self.SVImage = @[@"surface", @"s6.jpg", @"can.jpg", @"mero.jpg", @"tyson.jpg", @"oort", @"regera"];
        self.SVCreatorImage = @[@"microsoft.jpg", @"brownlee.jpg", @"asap.jpg", @"howcast.jpg", @"bi.jpg", @"cc", @"evo.jpg"];
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