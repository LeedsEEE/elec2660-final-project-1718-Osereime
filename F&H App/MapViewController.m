//
//  MapViewController.m
//  F&H App
//
//  Created by Osereime Akhigbe on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MapViewController.h"
#import "StoreLocationAnnotation.h"

@interface MapViewController ()

@end

@implementation MapViewController

//Elecetronic & Electrical Engineering Building Location
#define EEE_Building_Latitude 53.809787 ;
#define EEE_Building_Longitude -1.555443;

//Tesco Store Locations
#define BlenheimTerrace_Latitude 53.807673 ;
#define BlenheimTerrace_Longitude -1.551616;

#define CalverleySt_Latitude 53.796105 ;
#define CalverleySt_Longitude -1.549725;

#define BurleyRd_Latitude 53.804428 ;
#define BurleyRd_Longitude -1.568445;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.location = [[CLLocationManager alloc] init];
    
    self.mapStoreView.delegate = self;
    self.location.delegate = self;
    
    [self.location requestWhenInUseAuthorization];
    
    self.mapStoreView.showsUserLocation = YES;
    
    CLLocation *currentLocation = self.location.location;
    CLLocationCoordinate2D locationCoords;
    //currentLocation.coordinate;
    locationCoords.latitude = EEE_Building_Latitude;
    locationCoords.longitude = EEE_Building_Longitude;
    
    /*self.mapStoreView.region = MKCoordinateRegionMake(locationCoords, MKCoordinateSpanMake(0.01, 0.01));*/
    
    //Annotation
   //creating multiple annotations using an array function
    NSMutableArray * locations = [[NSMutableArray alloc] init];
    CLLocationCoordinate2D location;
    StoreLocationAnnotation *multipleAnnotaions;
    
    //Elecetronic & Electrical Engineering Building annotation
    multipleAnnotaions = [[StoreLocationAnnotation alloc] init];
    location.latitude = EEE_Building_Latitude;
    location.longitude = EEE_Building_Longitude;
    multipleAnnotaions.coordinate = location;
    multipleAnnotaions.title = @"Electronic & Electrical Engineering";
    multipleAnnotaions.subtitle = @"UoL";
    [locations addObject:multipleAnnotaions];
    
    //tesco BlenheimTerrace annotation
    multipleAnnotaions = [[StoreLocationAnnotation alloc] init];
    location.latitude = BlenheimTerrace_Latitude;
    location.longitude = BlenheimTerrace_Longitude;
    multipleAnnotaions.coordinate = location;
    multipleAnnotaions.title = @"Tesco Express";
    multipleAnnotaions.subtitle = @"Blenheim Terrace";
    [locations addObject:multipleAnnotaions];
    
    //tesco CalverleySt annotation
    multipleAnnotaions = [[StoreLocationAnnotation alloc] init];
    location.latitude = CalverleySt_Latitude;
    location.longitude = CalverleySt_Longitude;
    multipleAnnotaions.coordinate = location;
    multipleAnnotaions.title = @"Tesco Express";
    multipleAnnotaions.subtitle = @"Calverley St.";
    [locations addObject:multipleAnnotaions];
    
    //tesco BurleyRd annotation
    multipleAnnotaions = [[StoreLocationAnnotation alloc] init];
    location.latitude = BurleyRd_Latitude;
    location.longitude = BurleyRd_Longitude;
    multipleAnnotaions.coordinate = location;
    multipleAnnotaions.title = @"Tesco Express";
    multipleAnnotaions.subtitle = @"Burley Rd.";
    [locations addObject:multipleAnnotaions];
    
    [self.mapStoreView addAnnotations:locations];
    
    
    /*
    //Creating a coordinate for annotation
    CLLocationCoordinate2D eeeLocation;
    eeeLocation.latitude = EEE_Building_Latitude;
    eeeLocation.longitude = EEE_Building_Longitude;
    
    //annotaion creation
    StoreLocationAnnotation * myAnnotation = [StoreLocationAnnotation alloc];
    myAnnotation.coordinate = eeeLocation;
    myAnnotation.title = @"Electronic & Electrical Engineering";
    myAnnotation.subtitle = @"Not only about Circuits";
    
    [self.mapStoreView addAnnotation:myAnnotation];*/
    
   /* MKPlacemark *mkDest = [[MKPlacemark alloc]
                           initWithCoordinate:multipleAnnotaions.coordinate
                           addressDictionary:nil];
    
   [request setDestination:[[MKMapItem alloc] initWithPlacemark:mkDest]];
    
    MKDirectionsRequest *request = [[MKDirectionsRequest alloc] init];
    [request setSource:[MKMapItem mapItemForCurrentLocation]];
    MKPlacemark *mkDest = [[MKPlacemark alloc] initWithPlacemark:topResult];
    [request setDestination:[[MKMapItem alloc] initWithPlacemark:mkDest]];
    [request setTransportType:MKDirectionsTransportTypeWalking]; // This can be limited to automobile and walking directions.
    [request setRequestsAlternateRoutes:NO];
    MKDirections *directions = [[MKDirections alloc] initWithRequest:request];
    [directions calculateDirectionsWithCompletionHandler:^(MKDirectionsResponse *response, NSError *error) {
        if (!error) {
            for (MKRoute *route in [response routes]) {
                [self.mapStoreView addOverlay:[route polyline] level:MKOverlayLevelAboveRoads]; // Draws the route above roads, but below labels.
                // You can also get turn-by-turn steps, distance, advisory notices, ETA, etc by accessing various route properties.
                
         
            }
        }
    }];*/
}

-(void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view{
    NSLog(@"Annotation Tapped");
    
    id <MKAnnotation> annotation = [view annotation];
    
    if ([annotation isKindOfClass:[MKPointAnnotation class]]) {
        NSLog(@"clicked on point");
}
    if ([annotation isKindOfClass:[MKPointAnnotation class]]) {
        NSLog(@"clicked on point");
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Get Directions?" message:@"Press okay to begin navigation" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
            NSLog(@"Cancel");
        }];
        UIAlertAction *okayAction = [UIAlertAction actionWithTitle:@"Okay" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
            NSLog(@"Okay");
        }];
        [alertController addAction:cancelAction];
        [alertController addAction:okayAction];
        [self presentViewController:alertController animated:YES completion:nil];
        }
    }



#pragma mark Map View Delegate Methods
-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    NSLog(@"User Location = %f, %f", userLocation.coordinate.latitude, userLocation.coordinate.longitude);
    MKCoordinateRegion region = MKCoordinateRegionMake(userLocation.coordinate, MKCoordinateSpanMake(0.1, 0.1));
    [self.mapStoreView setRegion:region animated:YES];
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

//https://stackoverflow.com/questions/19367847/different-button-actions-for-each-segmented-control-segment



- (IBAction)directionsButtonPressed:(id)sender {
}

- (IBAction)saveButtonPressed:(id)sender {
}

- (IBAction)mapTypeSelected:(UISegmentedControl *)sender {
    NSInteger selectedIndex = ((UISegmentedControl *) sender).selectedSegmentIndex;
    switch(selectedIndex)
    {
        case 0:
            _mapStoreView.mapType = MKMapTypeStandard;
            break;
        case 1:
            _mapStoreView.mapType = MKMapTypeSatellite;
            break;
        case 2:
            _mapStoreView.mapType = MKMapTypeHybrid;
            break;
            
        default : break; //Do nothing
    }
    /*if ( == 0){
     _mapStoreView.mapType = MKMapTypeStandard;
     }else if(sender == 1){
     
     _mapStoreView.mapType = MKMapTypeSatellite;
     }else if (sender == 2){
     _mapStoreView.mapType = MKMapTypeHybrid;*/
}
@end
