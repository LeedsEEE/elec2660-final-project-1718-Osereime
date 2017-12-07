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
  /*  if (_unitsSegmentControl.selectedSegmentIndex == 0) {
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
    }*/
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@synthesize HeightValue;
@synthesize WeightValue;
@synthesize bmiSavedValue,categorySaved ;

-(void)viewWillAppear:(BOOL)animated {
    
    NSArray *newbmiSavedValue = [[NSUserDefaults standardUserDefaults] objectForKey:@"BMI Value"];
    NSArray *newcategorySaved = [[NSUserDefaults standardUserDefaults] objectForKey:@"Category"];
    
    bmiSavedValue = [NSMutableArray arrayWithArray:newbmiSavedValue];
    categorySaved = [NSMutableArray arrayWithArray:newcategorySaved];
    
    NSLog(@"userdefault recall");
}

-(void)viewWillDisappear:(BOOL)animated {
    [[NSUserDefaults standardUserDefaults] setObject:bmiSavedValue forKey:@"BMI Value"];
    [[NSUserDefaults standardUserDefaults] setObject:categorySaved forKey:@"Category"];
    NSLog(@"userdefault save");
}

- (IBAction)resultsHistoryButton:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"showResults" sender:self];
}

- (IBAction)heightSlider:(UISlider *)sender {
    if (_unitsSegmentControl.selectedSegmentIndex == 0) {
    self.viewHeight.text = [NSString stringWithFormat:@" %.2f m", sender.value];
    }else if (_unitsSegmentControl.selectedSegmentIndex == 1){
    self.viewHeight.text = [NSString stringWithFormat:@" %.2f ft", sender.value];
    }
    HeightValue = sender.value;
}

- (IBAction)typedHeight:(UITextField *)sender {
    self.viewSliderHeightValue.value = [sender.text floatValue];
    HeightValue = [sender.text floatValue];
}
- (IBAction)weightSlider:(UISlider *)sender {
    if (_unitsSegmentControl.selectedSegmentIndex == 0) {
    self.viewWeight.text = [NSString stringWithFormat:@" %.2f Kg", sender.value];
    }else if (_unitsSegmentControl.selectedSegmentIndex == 1) {
        self.viewWeight.text = [NSString stringWithFormat:@" %.2f lb", sender.value];
    }
    WeightValue = sender.value;
}

- (IBAction)typedWeight:(UITextField *)sender {
    self.viewSliderWeightValue.value = [sender.text floatValue];
    WeightValue = [sender.text floatValue];
}

- (IBAction)buttonPressed:(UIButton *)sender {
    //BMI Calculation
    if (_unitsSegmentControl.selectedSegmentIndex == 0) {
        float BMIValue;
     BMIValue = WeightValue/(HeightValue*HeightValue); //Using the formula for kg and meters
    self.viewBMIValue.text = [NSString stringWithFormat:@"%.2f kg/m^2", BMIValue];
       
        if (BMIValue < 15) {
            self.labelCategory.text = [NSString stringWithFormat:@" Category: Very severely underweight" ];
        }
        else if (BMIValue < 16) {
            self.labelCategory.text = [NSString stringWithFormat:@" Category: Severely underweight" ];
        }
        else if (BMIValue < 18.5) {
            self.labelCategory.text = [NSString stringWithFormat:@" Category: Underweight" ];
        }
        else if (BMIValue < 25) {
            self.labelCategory.text = [NSString stringWithFormat:@" Category: Normal (Healthy)" ];
        }
        else if (BMIValue < 30) {
            self.labelCategory.text = [NSString stringWithFormat:@" Category: Overweight" ];
        }
        else if (BMIValue < 35) {
            self.labelCategory.text = [NSString stringWithFormat:@" Category: Obese Class I (Moderately obese)" ];
        }
        else if (BMIValue < 40) {
            self.labelCategory.text = [NSString stringWithFormat:@" Category: Obese Class II (Severely obese)" ];
        }
        else if (BMIValue > 40) {
            self.labelCategory.text = [NSString stringWithFormat:@" Category: Obese Class III (Very severely obese)" ];
        }
        NSString *bmiString = [NSString stringWithFormat:@"%.2f", BMIValue];
        NSString *categoryString = [NSString stringWithFormat:@"%@", self.labelCategory.text];
        [bmiSavedValue insertObject:bmiString atIndex:bmiSavedValue.count];
        [categorySaved insertObject:categoryString atIndex:categorySaved.count];
        
        NSLog(categoryString);
        NSLog(bmiString);
} else if(_unitsSegmentControl.selectedSegmentIndex == 1) {
    float BMIValue2;
    BMIValue2 = (WeightValue*703)/((HeightValue*12)*(HeightValue*12)); //Using the formula
    self.viewBMIValue.text = [NSString stringWithFormat:@"%.2f kg/m^2",BMIValue2];
    
    if (BMIValue2 < 15) {
        self.labelCategory.text = [NSString stringWithFormat:@" Category: Very severely underweight" ];
    }
    else if (BMIValue2 < 16) {
        self.labelCategory.text = [NSString stringWithFormat:@" Category: Severely underweight" ];
    }
    else if (BMIValue2 < 18.5) {
        self.labelCategory.text = [NSString stringWithFormat:@" Category: Underweight" ];
    }
    else if (BMIValue2 < 25) {
        self.labelCategory.text = [NSString stringWithFormat:@" Category: Normal (Healthy)" ];
    }
    else if (BMIValue2 < 30) {
        self.labelCategory.text = [NSString stringWithFormat:@" Category: Overweight" ];
    }
    else if (BMIValue2 < 35) {
        self.labelCategory.text = [NSString stringWithFormat:@" Category: Obese Class I (Moderately obese)" ];
    }
    else if (BMIValue2 < 40) {
        self.labelCategory.text = [NSString stringWithFormat:@" Category: Obese Class II (Severely obese)" ];
    }
    else if (BMIValue2 > 40) {
        self.labelCategory.text = [NSString stringWithFormat:@" Category: Obese Class III (Very severely obese)" ];
    }
    
    NSString *bmiString = [NSString stringWithFormat:@"%.2f", BMIValue2];
    NSString *categoryString = [NSString stringWithFormat:@"%@", self.labelCategory.text];
    [bmiSavedValue insertObject:bmiString atIndex:bmiSavedValue.count];
    [categorySaved insertObject:categoryString atIndex:categorySaved.count];
    
    NSLog(categoryString);
    NSLog(bmiString);
    
    NSLog(@"bmi array = %i", bmiSavedValue.count);
    
    /*[bmiSavedValue insertObject:bmiString atIndex:bmiSavedValue.count];
    [categorySaved insertObject:categoryString atIndex:categorySaved.count];
    
    NSLog(categoryString);
    NSLog(bmiString);*/
}
}

- (IBAction)changedUnits:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        self.viewSliderHeightValue.minimumValue = 0.0f;//setting minimum height value
        self.viewSliderHeightValue.maximumValue = 2.5f;//setting maximum value
        self.viewSliderHeightValue.value = 1.25f; //setting initial height value
        self.viewSliderWeightValue.minimumValue = 0.0f;// setting minimum weight value
        self.viewSliderWeightValue.maximumValue = 150.0f;// setting maximum weight value
        self.viewSliderWeightValue.value = 75.0f;// setting initial weight value
    }else if (sender.selectedSegmentIndex == 1) {
        self.viewSliderHeightValue.minimumValue = 0.0f;//setting minimum value
        self.viewSliderHeightValue.maximumValue = 8.2f;//setting maximum value
        self.viewSliderHeightValue.value = 4.1f; //setting initial value
        self.viewSliderWeightValue.minimumValue = 0.0f;// setting minimum weight value
        self.viewSliderWeightValue.maximumValue = 330.0f;// setting maximum weight value
        self.viewSliderWeightValue.value = 165.0f;// setting initial weight value
    }
    
    [self weightSlider:self.viewSliderWeightValue];
    [self heightSlider:self.viewSliderHeightValue];

}

-(void)prepareForSegue: (UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showResults"]) {
        
        BMITableViewController *destinationViewController = [segue destinationViewController];
        
        destinationViewController.bmiArray = bmiSavedValue;
        destinationViewController.categoryArray = categorySaved;
        
    }
}

@end
