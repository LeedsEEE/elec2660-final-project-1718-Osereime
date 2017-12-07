//
//  HealthAdviceTableViewController.h
//  F&H App
//
//  Created by Osereime Akhigbe on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HealthAdviceDataModel.h"
#import "HealthAdviceViewController.h"

@interface HealthAdviceTableViewController : UITableViewController

@property (strong, nonatomic) HealthAdviceDataModel *data;

@end
