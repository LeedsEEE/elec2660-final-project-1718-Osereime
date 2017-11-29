//
//  ViewController.m
//  F&H App
//
//  Created by Osereime Akhigbe on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@synthesize HeightValue;
@synthesize WeightValue;

- (IBAction)resultsHistoryButton:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"showResults" sender:self];
}

- (IBAction)heightSlider:(UISlider *)sender {
    self.viewHeight.text = [NSString stringWithFormat:@" %.2f m", sender.value];
    HeightValue = sender.value;
}

- (IBAction)typedHeight:(UITextField *)sender {
    self.viewSliderHeightValue.value = [sender.text floatValue];
    HeightValue = [sender.text floatValue];
}
- (IBAction)weightSlider:(UISlider *)sender {
    self.viewWeight.text = [NSString stringWithFormat:@" %.2f Kg", sender.value];
    WeightValue = sender.value;
}

- (IBAction)typedWeight:(UITextField *)sender {
    self.viewSliderWeightValue.value = [sender.text floatValue];
    WeightValue = [sender.text floatValue];
}

- (IBAction)buttonPressed:(UIButton *)sender {
    //BMI Calculation
    float BMIValue;
    BMIValue = WeightValue/(HeightValue*HeightValue); //Using the formula
    self.viewBMIValue.text = [NSString stringWithFormat:@"%.2f kg/m^2", BMIValue];
}
@end
