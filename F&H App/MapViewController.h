//
//  MapViewController.h
//  F&H App
//
//  Created by Osereime Akhigbe on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/Mapkit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate, UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapStoreView;
@property (strong,nonatomic) CLLocationManager
*location;

- (IBAction)directionsButtonPressed:(id)sender;
- (IBAction)saveButtonPressed:(id)sender;
- (IBAction)mapTypeSelected:(UISegmentedControl *)sender;



@end
