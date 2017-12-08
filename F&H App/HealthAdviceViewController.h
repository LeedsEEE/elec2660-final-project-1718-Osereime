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

@property (strong, nonatomic) IBOutlet UILabel *BMIClassLabel;

@property (strong, nonatomic) IBOutlet UITextView *aadviceTextView;

@property (strong, nonatomic) IBOutlet UIImageView *bmiImage;


@property (strong,nonatomic) HealthAdviceComponentData *data;

@end
