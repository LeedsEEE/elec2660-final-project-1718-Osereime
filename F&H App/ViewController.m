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
   // UISlider* viewSliderHeightValue = [[UISlider alloc] init];
    if (_unitsSegmentControl.selectedSegmentIndex == 0) {
    self.viewSliderHeightValue.minimumValue = 0.0f;//setting minimum height value
    self.viewSliderHeightValue.maximumValue = 2.5f;//setting maximum value
    self.viewSliderHeightValue.value = 1.25f; //setting initial height value
    self.viewSliderWeightValue.minimumValue = 0.0f;// setting minimum weight value
    self.viewSliderWeightValue.maximumValue = 150.0f;// setting maximum weight value
    self.viewSliderWeightValue.value = 75.0f;// setting initial weight value
}else if (_unitsSegmentControl.selectedSegmentIndex == 1) {
        self.viewSliderHeightValue.minimumValue = 0.0f;//setting minimum value
        self.viewSliderHeightValue.maximumValue = 120.0f;//setting maximum value
        self.viewSliderHeightValue.value = 60.0f; //setting initial value
    }
    
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
    //float BMIValue2;
    BMIValue = WeightValue/(HeightValue*HeightValue); //Using the formula
    //BMIValue2 = WeightValue*4.88/(HeightValue*HeightValue); //Using the formula
    if (_unitsSegmentControl.selectedSegmentIndex == 0) {
    
    self.viewBMIValue.text = [NSString stringWithFormat:@"%.2f kg/m^2", BMIValue];
} else if(_unitsSegmentControl.selectedSegmentIndex == 1) {
    
    self.viewBMIValue.text = [NSString stringWithFormat:@"%.2f ",BMIValue];
}
}
@end
