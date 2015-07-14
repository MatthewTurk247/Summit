//
//  SUMVideo.m
//  SummIt
//
//  Created by Matthew Turk on 7/5/15.
//  Copyright (c) 2015 SummIt, Inc. All rights reserved.
//

#import "SUMVideo.h"
@interface SUMVideo ()

@property (nonatomic, strong) NSString *SVDescription;
@property (nonatomic, strong) NSString *SVTitle;
@property (nonatomic, strong) NSString *SVCreator;
@property (nonatomic, strong) NSData *SVCreatorImage; //Not sure what the datatype should be for the image. Perhaps I could #import UIKit to acces the UIImage datatype. Just FYI, the SVCreator is a string varible that stores the video creators name and other credentials; SVCreatorImage stores the creators profile image.
@property (nonatomic, strong) NSData *SVData; //Video length and other atributs of the actual video. -Matthew Turk
@property (nonatomic, strong) NSData *SVStaticComments; //Unfortunately, in the beta, users won't be able to comment from the application. That will come later. -Matthew Turk
@property (nonatomic, strong) NSData *SVAge; //When the video was initially uploaded to  the video media platform. -Matthew Turk
@property (nonatomic, strong) NSData *SVViewCount; //How many views the video has on the given video media platform. When SummIt grows big enough, these video platforms may want us to increment their view count from SummIt if possible. -Matthew Turk
@property (nonatomic, assign) bool *SVAreCaptionsAvailable;
@property (nonatomic, strong) NSData *SVCaptions;
@property(nonatomic, strong) NSData *SVAdvertisement; //This is the ad that may or maynot come to the foreground of a video. -Matthew Turk
-(void)SVEnterFullScreen:(NSData *)video; //This is self explanitory. -Matthew Turk
-(void)SVMinimizeVideo:(NSData *)video; //Just like in the YouTube mobile application. -Matthew Turk
-(void)SVAlterVideoQuality:(NSData *)videoQuality;
-(void)SVReportVideo:(NSData *)video;
-(void)SVEnableCaptions:(NSData *)captions withLogic:(bool *)areCaptionsAvailable;
-(void)SVDisableCaptions:(NSData *)captions withLogic:(bool *)areCaptionsAvailable;

@end

@implementation SUMVideo

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