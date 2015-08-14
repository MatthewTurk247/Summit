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
        self.SVAge = @[@"2.5 Years", @"2 Months", @"3 Days", @"8 Hours", @"13 Hours", @"5 Hours", @"9 Months"];
        self.SVViewCount = @[@"4.2M", @"23K", @"504K", @"12K", @"2.3M", @"209K", @"987K"];
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

-(void)SVLoadPopularVideos {
    NSString *SVTBaseURLString = @"https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=50&playlistId=PLrEnWoR732-BHrPp_Pm8_VleD68f9s14-&key=AIzaSyArbT63UVCvk0RkArDgOwcW-gfUJJ8-ea4";
    NSURLRequest *SVTRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:SVTBaseURLString]];
    self.SVData = [NSURLConnection sendSynchronousRequest:SVTRequest returningResponse:nil error:nil];
    NSDictionary *SVTJSON = [NSJSONSerialization JSONObjectWithData:self.SVData options:kNilOptions error:nil];
    
    [NSURLConnection sendAsynchronousRequest:SVTRequest queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if (!data) {
            NSLog(@"%s: sendAynchronousRequest error: %@", __FUNCTION__, connectionError);
            return;
        } else if ([response isKindOfClass:[NSHTTPURLResponse class]]) {
            NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
            if (statusCode != 200) {
                NSLog(@"%s: sendAsynchronousRequest status code != 200: response = %@", __FUNCTION__, response);
                return;
            }
        }
    }];
    
    NSError *SVTParseError = nil;
    NSDictionary *SVTDictionary =[NSJSONSerialization JSONObjectWithData:self.SVData options:0 error:&SVTParseError];
    
    if (!SVTDictionary) {
        NSLog(@"%s: JSONObjectWithData error: %@; data = %@", __FUNCTION__, SVTParseError, [[NSString alloc] initWithData:self.SVData encoding:NSUTF8StringEncoding]);
        return;
    }
    
    
    NSMutableArray *items = [SVTDictionary objectForKey:@"items"];
    
    // renamed property blogposts to titles and changed it to NSMutableArray
    //items = [NSMutableArray array];
    
    
    for (NSDictionary *item in items) {
        NSDictionary *video = [item objectForKey:@"snippet"];
        //NSLog(@"%@",video);
        NSDictionary *title = [video objectForKey:@"title"];
        NSLog(@"%@", title);
        //NSString *title = [video objectForKey:@"title"];
        
        //NSLog(@"%@",video);
        
        // The titles property should be an NSMutableArray
        //[items addObject:title];
        NSMutableArray *titleArray = [NSMutableArray new];
        [titleArray addObject:title];
        NSLog(@"%@", titleArray);
        //self.SVTitle = titleArray;
    }
    NSLog(@"%@\n", [[SVTDictionary objectForKey:@"pageInfo"] objectForKey:@"resultsPerPage"]);
}

@end