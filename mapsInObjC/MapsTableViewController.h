//
//  MapsTableViewController.h
//  
//
//  Created by Jordan Kiley on 10/21/16.
//
//


#import <UIKit/UIKit.h>

@interface MapsTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
//@property (readwrite, strong) NSArray *arrayOfMapTypes;
//@property (nonatomic, strong) NSString *selectedStyle;
@end
