//
//  HealthAdviceComponentData.h
//  F&H App
//
//  Created by Osereime Akhigbe on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HealthAdviceComponentData : NSObject

@property (nonatomic, strong) NSString *BMIClassificationType; //text to implement the BMI Type
@property (nonatomic, strong) NSString *Advice; //text to implement the advice
//@property (nonatomic, strong) UIImage *Image;
@property (strong,nonatomic) NSString *dataImage; //use to locate the image needed

@end
