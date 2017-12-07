//
//  HealthAdviceViewController.h
//  F&H App
//
//  Created by Osereime Akhigbe on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HealthAdviceDataModel.h"
#import "HealthAdviceComponentData.h"

@interface HealthAdviceViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *BMIClassLabel;
@property (weak, nonatomic) IBOutlet UILabel *AdviceLabel;


@property (strong,nonatomic) HealthAdviceComponentData *data;

@end
