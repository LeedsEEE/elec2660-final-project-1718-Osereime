//
//  ViewController.h
//  F&H App
//
//  Created by Osereime Akhigbe on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)resultsHistoryButton:(UIBarButtonItem *)sender;
- (IBAction)heightSlider:(UISlider *)sender;
- (IBAction)typedHeight:(UITextField *)sender;
@property (weak, nonatomic) IBOutlet UITextField *viewHeight;
@property (weak, nonatomic) IBOutlet UISlider *viewSliderHeightValue;
@property (weak, nonatomic) IBOutlet UISlider *viewSliderWeightValue;
@property (weak, nonatomic) IBOutlet UITextField *viewWeight;
- (IBAction)weightSlider:(UISlider *)sender;
- (IBAction)typedWeight:(UITextField *)sender;
@property (weak, nonatomic) IBOutlet UITextField *viewBMIValue;

- (IBAction)buttonPressed:(UIButton *)sender;
- (IBAction)changedUnits:(UISegmentedControl *)sender;

@property float HeightValue;
@property float WeightValue;

@property (weak, nonatomic) IBOutlet UISegmentedControl *unitsSegmentControl;

@property (weak, nonatomic) IBOutlet UILabel *labelCategory;


@end

