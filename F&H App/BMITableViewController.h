//
//  BMITableViewController.h
//  
//
//  Created by Osereime Akhigbe on 21/11/2017.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"


@interface BMITableViewController : UITableViewController

- (IBAction)BMIBackButton:(UIBarButtonItem *)sender;

@property (strong,nonatomic) ViewController *viewController;
@end
