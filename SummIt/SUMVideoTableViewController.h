//
//  SUMVideoTableViewController.h
//  
//
//  Created by Matthew Turk on 7/21/15.
//
//

#import <UIKit/UIKit.h>
@class SUMVideo;

@interface SUMVideoTableViewController : UITableViewController

@property (nonatomic, strong) SUMVideo *video;
@property (nonatomic, assign) BOOL *SVTIsTop;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *SVTSearchIcon;

@end