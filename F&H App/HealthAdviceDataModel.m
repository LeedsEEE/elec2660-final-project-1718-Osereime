//
//  HealthAdviceDataModel.m
//  F&H App
//
//  Created by Osereime Akhigbe on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "HealthAdviceDataModel.h"

@implementation HealthAdviceDataModel

- (instancetype)init

{
    self = [super init];
    if (self) {
        self.BMIClassification = [NSMutableArray array];
        HealthAdviceComponentData *vuWeight = [[HealthAdviceComponentData alloc] init];
        
        vuWeight.BMIClassificationType = @"Very severely underweight";
        vuWeight.Advice = @"Drink Plenty Water";
        
        self.BMIClassification = [NSMutableArray array];
        HealthAdviceComponentData *suWeight = [[HealthAdviceComponentData alloc] init];
        
        suWeight.BMIClassificationType = @"Severely underweight";
        //http://workoutplanner.com.au/tag/underweight/
        suWeight.Advice = @"The best body is not a skinny body, the best body is a healthy body, there are TOO many dangers of being underweight to try to lose weight for “beauty”. Some dangers of being underweight include Anaemia, Amenorrhea, Infertility and Stigma. Take time out to visit a medical practitioner for more advice. Meal plan articles are also very adviceable to pick up.";
        //https://i0.wp.com/workoutplanner.com.au/wp-content/uploads/2017/01/dangers-skinny-underweight-women-anemia-stress-depression.jpg?resize=800%2C400
        suWeight.dataImage = @"HealthAdvice/-underweight-women-.jpg";
        
        self.BMIClassification = [NSMutableArray array];
        HealthAdviceComponentData *uWeight = [[HealthAdviceComponentData alloc] init];
        
        uWeight.BMIClassificationType = @"Underweight";
        uWeight.Advice = @"Drink Plenty Water";
        //https://www.shape.com/sites/shape.com/files/styles/facebook_og_image/public/story/weight-fluctuation.jpg
        uWeight.dataImage = @"HealthAdvice/weight-fluctuation.jpg";
        
        
        self.BMIClassification = [NSMutableArray array];
        HealthAdviceComponentData *nWeight = [[HealthAdviceComponentData alloc] init];
        
        nWeight.BMIClassificationType = @"Normal (healthy weight)";
        nWeight.Advice = @"You are healthy. Keep up the good work. Here are some tips on How to remain Healthy";
        //http://www.apa.org/Images/healthy-habits-title-image_tcm7-217933.jpg
        nWeight.dataImage = @"HealthAdvice/healthy-habits.jpg";
        
        self.BMIClassification = [NSMutableArray array];
        HealthAdviceComponentData *oWeight = [[HealthAdviceComponentData alloc] init];
        
        oWeight.BMIClassificationType = @"Overweight";
        oWeight.Advice = @"Drink Plenty Water";
        
        //https://www.hivehealthmedia.com/wp-content/uploads/2013/04/fat-woman-pushups.jpg
        oWeight.dataImage = @"HealthAdvice/fat-woman-pushups.jpg";
        
        
        self.BMIClassification = [NSMutableArray array];
        HealthAdviceComponentData *o1Weight = [[HealthAdviceComponentData alloc] init];
        
        o1Weight.BMIClassificationType = @"Obese Class I (Moderately obese)";
        o1Weight.Advice = @"Drink Plenty Water";
        
        self.BMIClassification = [NSMutableArray array];
        HealthAdviceComponentData *o2Weight = [[HealthAdviceComponentData alloc] init];
        
        o2Weight.BMIClassificationType = @"Obese Class II (Severely obese)";
        o2Weight.Advice = @"Drink Plenty Water";
        
        self.BMIClassification = [NSMutableArray array];
        HealthAdviceComponentData *o3Weight = [[HealthAdviceComponentData alloc] init];
        
        o3Weight.BMIClassificationType = @"Obese Class III (Very severely obese)";
        o3Weight.Advice = @"Drink Plenty Water";
        //https://i.pinimg.com/originals/9c/e7/b7/9ce7b70f198fa10f6adc9ad036084ad8.jpg
        o3Weight.dataImage = @"HealthAdvice/vobese.jpg";
        
        
         [self.BMIClassification addObject:vuWeight]; //index 0
         [self.BMIClassification addObject:suWeight]; //index 1
         [self.BMIClassification addObject:uWeight]; //index 2
         [self.BMIClassification addObject:nWeight]; //index 3
         [self.BMIClassification addObject:oWeight]; //index 4
         [self.BMIClassification addObject:o1Weight]; //index 5
         [self.BMIClassification addObject:o2Weight]; //index 6
         [self.BMIClassification addObject:o3Weight]; //index 6

    }
    return self;
}
        
@end
