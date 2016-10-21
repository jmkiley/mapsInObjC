//
//  MapsTableViewController.h
//  
//
//  Created by Jordan Kiley on 10/21/16.
//
//


#import <UIKit/UIKit.h>

@interface MapsTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) NSArray *arrayOfMapTypes;
@end
