//
//  SUMVideoTableViewController.m
//  
//
//  Created by Matthew Turk on 7/21/15.
//
//

#import "SUMVideoTableViewController.h"
#import "SUMTableViewCell.h"
#import <QuartzCore/QuartzCore.h>
#import "SUMVid.h"

@interface SUMVideoTableViewController ()
@property SUMVid *vid;
@end

@implementation SUMVideoTableViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    #define black [UIColor colorWithRed:32.0/255 green:34.0/255 blue:41.0/255 alpha:1.0]
    #define yellow [UIColor colorWithRed:241.0/255 green:196.0/255 blue:15.0/255 alpha:1.0]
    #define grey [UIColor colorWithRed:146.0/255 green:146.0/255 blue:146.0/255 alpha:1.0]
    self.navigationController.navigationBar.barTintColor = black;
    _SVTTitle = @[@"The Surface", @"Samsung S6 Edge Review!", @"Can Birds Actually Deliver Messages?", @"How to Tie a Merovingian Knot | Men's Fashion", @"Neil deGrasse Tyson Explains The End Of 'Interstellar'", @"The Oort Cloud: Crash Course Astronomy #22", @"Koenigsegg Regera at Geneva 2015 | evo MOTOR SHOWS"];
    _SVTDescription = @[@"Microsoft", @"Marques Brownlee", @"ASAP Science", @"Howcast Men's Fashion", @"Business Insider", @"Crash Course", @"EVO"];
    _SVTImage = @[@"surface", @"s6.jpg", @"can.jpg", @"mero.jpg", @"tyson.jpg", @"oort", @"regera"];
    _SVTCreatorImage = @[@"microsoft.jpg", @"brownlee.jpg", @"asap.jpg", @"howcast.jpg", @"bi.jpg", @"cc", @"evo.jpg"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return _SVTTitle.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SUMTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SUMTableViewCell" forIndexPath:indexPath];
    
    // Configure the cell...
    int row = [indexPath row];
//    cell.SVTTitleLabel.text = vid.SVTitle[row];
//    cell.SVTDescriptionLabel.text = vid.SVCreator[row];
//    cell.SVTThumbImage.image = [UIImage imageNamed:vid.SVCreatorImage[row]];
//    cell.SVTCreatorImageView.image = [UIImage imageNamed:vid.SVCreator[row]];
    cell.SVTTitleLabel.text = self.SVTTitle[row];
    cell.SVTDescriptionLabel.text = self.SVTDescription[row];
    cell.SVTThumbImage.image = [UIImage imageNamed:self.SVTImage[row]];
    cell.SVTCreatorImageView.image = [UIImage imageNamed:self.SVTCreatorImage[row]];
    cell.SVTCreatorImageView.layer.cornerRadius = 8.0;
    cell.SVTCreatorImageView.layer.masksToBounds = YES;
    if (_SVTIsTop == YES) {
        cell.SVTCellSeparator.backgroundColor = yellow;
        cell.SVTAdIndicatorPill.hidden = NO;
        } else {
            cell.SVTCellSeparator.backgroundColor = grey;
        cell.SVTAdIndicatorPill.hidden = YES;
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.row == 0)
    {
        _SVTIsTop = YES;
        return 193.0f;
    } else {
        _SVTIsTop = NO;
        return 125.0f;
    }
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
