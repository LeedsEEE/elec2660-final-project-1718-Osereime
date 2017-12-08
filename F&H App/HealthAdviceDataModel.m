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
        vuWeight.Advice = @"You are also at risk of Anaemia, Ameorrhea, Infertility and Stigma. In this condition, regular visits to the clinic is adviced. This could be caused by a disease (possibly hereditary) and can only be cured when one has the proper assistance. You are also encouraged to eat a lot of protein, to help body building. In this condition, you are advised not to partake in rigorous activities, to shy away from possible injuruies.";
        //http://netdoctor.cdnds.net/17/10/980x490/landscape-1489165694-fruitveg.jpg
        vuWeight.dataImage = @"HealthAdvice/fruitveg.jpg.jpg";
        
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
        uWeight.Advice = @"Being underweight could be a sign that you're not eating enough or that you may be ill. Beign underweight is not good because it could cause Nutritional deficiencies or Weakened immune system or Fertility Problems. It should be your aim to gain weight gradually until you reach a healthy weight. This can be achieved by Eating at least five portions of a variety of fruit and vegetables every day, Basing meals on potatoes, bread, rice, pasta or other starchy carbohydrates. Choose wholegrain where possible. More information can be relayed to you by your GP.";
        //https://www.shape.com/sites/shape.com/files/styles/facebook_og_image/public/story/weight-fluctuation.jpg
        uWeight.dataImage = @"HealthAdvice/weight-fluctuation.jpg";
        
        
        self.BMIClassification = [NSMutableArray array];
        HealthAdviceComponentData *nWeight = [[HealthAdviceComponentData alloc] init];
        
        nWeight.BMIClassificationType = @"Normal (healthy weight)";
        nWeight.Advice = @"You are healthy. Keep up the good work. Here are some tips on How to remain Healthy. Ensure you keep to your balanced diet, sample levels of carbohydrates, protein, fruit and vegetables (at least five portions of per day. For fresh fruit and vegetables). Exercise Regularly (at least twice a eek) and go for medical check-ups at least once a month.";
        //http://www.apa.org/Images/healthy-habits-title-image_tcm7-217933.jpg
        nWeight.dataImage = @"HealthAdvice/healthy-habits.jpg";
        
        self.BMIClassification = [NSMutableArray array];
        HealthAdviceComponentData *oWeight = [[HealthAdviceComponentData alloc] init];
        
        oWeight.BMIClassificationType = @"Overweight";
        //https://www.nhs.uk/conditions/obesity/
        oWeight.Advice = @"Being Overweight isn't the end of the world, there are some professional Sportsmen/women that are Overweight, but still operate at maximum efficiency. Obesity can be caused by eating excessive amounts of cheap, high-calorie food and spending a lot of time sitting down, at desks, on sofas or in cars. The best way to avoid this is planning your meals. Ensure you get the right amounts daily to function. Also go for regular medical check-ups, and be active, volunteer at a shelter, jog, do something!";
        
        //https://www.hivehealthmedia.com/wp-content/uploads/2013/04/fat-woman-pushups.jpg
        oWeight.dataImage = @"HealthAdvice/fat-woman-pushups.jpg";
        
        
        self.BMIClassification = [NSMutableArray array];
        HealthAdviceComponentData *o1Weight = [[HealthAdviceComponentData alloc] init];
        
        o1Weight.BMIClassificationType = @"Obese Class I (Moderately obese)";
        //https://www.nhs.uk/conditions/obesity/
        o1Weight.Advice = @"It's very important to take steps to tackle obesity because, as well as causing obvious physical changes, it can lead to a number of serious and potentially life-threatening conditions, cancer, stroke, heart disease, etc. The best way to treat it is to join a local weight loss group, eat slowly,take up more activities and also visit a GP (at least 2 times a month) .From UK NHS";
        //http://pzimedia.com/post/tm670-2016-1467728447-727766046.jpg
        o1Weight.dataImage = @"HealthAdvice/obese1.jpg";

        
        self.BMIClassification = [NSMutableArray array];
        HealthAdviceComponentData *o2Weight = [[HealthAdviceComponentData alloc] init];
        
        o2Weight.BMIClassificationType = @"Obese Class II (Severely obese)";
        o2Weight.Advice = @"Drink Plenty Water";
        //https://www.gla.ac.uk/media/media_464488_en.jpg
        o2Weight.dataImage = @"HealthAdvice/obese2.jpg";
        
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
