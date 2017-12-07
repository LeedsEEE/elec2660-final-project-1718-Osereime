//
//  BMITableViewController.h
//  
//
//  Created by Osereime Akhigbe on 21/11/2017.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"


@interface BMITableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong,nonatomic) NSMutableArray *bmiArray;

@property (strong,nonatomic) NSMutableArray *categoryArray;

@property (strong, nonatomic) NSString *bmiData;

@property (strong, nonatomic) NSString *categoryData;

@end
