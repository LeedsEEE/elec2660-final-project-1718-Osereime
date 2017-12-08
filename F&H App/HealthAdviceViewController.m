//
//  HealthAdviceViewController.m
//  F&H App
//
//  Created by Osereime Akhigbe on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "HealthAdviceViewController.h"

@interface HealthAdviceViewController ()

@end

@implementation HealthAdviceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.BMIClassLabel.text = self.data.BMIClassificationType;
    //self.AdviceLabel.text = self.data.Advice;
    self.aadviceTextView.text = self.data.Advice;
    UIImage *bmiImageSource = [UIImage imageNamed:self.data.dataImage];
    self.bmiImage.image = bmiImageSource;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
