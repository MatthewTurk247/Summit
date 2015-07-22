//
//  SUMVideoTableViewController.h
//  
//
//  Created by Matthew Turk on 7/21/15.
//
//

#import <UIKit/UIKit.h>

@interface SUMVideoTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *SVTImage;
@property (nonatomic, strong) NSArray *SVTTitle;
@property (nonatomic, strong) NSArray *SVTDescription;
@property (nonatomic, strong) NSArray *SVTCreatorImage;
@property (nonatomic, assign) BOOL *SVTIsTop;

@end