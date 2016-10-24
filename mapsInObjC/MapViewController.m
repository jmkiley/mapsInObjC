//
//  MapViewController.m
//  mapsInObjC
//
//  Created by Jordan Kiley on 10/21/16.
//  Copyright © 2016 Jordan Kiley. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController () <MGLMapViewDelegate>



@end

@implementation MapViewController

@synthesize selectedStyle;
@synthesize mapView;
@synthesize timesSquarePlaces;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [self setupMap];
    
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Default Map Setup
- (void)setupMap {
    [mapView setStyleURL:[MGLStyle lightStyleURLWithVersion:8]];
    mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth| UIViewAutoresizingFlexibleHeight;
    mapView.tintColor = [UIColor greenColor];
    mapView.delegate = self;
    mapView.showsUserLocation = true;

    [mapView setCenterCoordinate:mapView.userLocation.coordinate zoomLevel:7 animated:true];

    [mapView setUserTrackingMode:MGLUserTrackingModeFollow];
    
    [self addAnnotations];
}

#pragma mark - Annotation Setup and Customization
- (void)addAnnotations {
    MGLPointAnnotation *tkts = [[MGLPointAnnotation alloc] init];
    tkts.title = @"TKTS Times Square";
    tkts.coordinate = CLLocationCoordinate2DMake(40.759546, -73.984840);
    
    MGLPointAnnotation *hamilton = [[MGLPointAnnotation alloc] init];
    hamilton.title = @"Hamilton";
    hamilton.coordinate = CLLocationCoordinate2DMake(40.759276, -73.986772);
    
    MGLPointAnnotation *marriott = [[MGLPointAnnotation alloc] init];
    marriott.title = @"Marriott Marquis";
    marriott.coordinate = CLLocationCoordinate2DMake(40.758965, -73.986262);
    
    timesSquarePlaces = @[tkts, hamilton, marriott];
    
    [mapView addAnnotations:timesSquarePlaces];
}

- (MGLAnnotationView *)mapView:(MGLMapView *)mapView viewForAnnotation:(id<MGLAnnotation>)annotation {
    // Checks that annotation is MGLPointAnnotation
    if (![annotation isKindOfClass:[MGLPointAnnotation class]]) {
        return nil;
    }
    
    NSString *reuseIdentifier = annotation.title;
    
    CustomAnnotationView *annotationView = [mapView dequeueReusableAnnotationViewWithIdentifier:reuseIdentifier];
    //Initializes annotation view if there isn't one
    if(!annotationView) {
        annotationView = [[CustomAnnotationView alloc] initWithReuseIdentifier:reuseIdentifier];
        annotationView.frame = CGRectMake(0, 0, 20, 20);
        
        // Give the Annotation a background color - it is transparent without it
        
        annotationView.backgroundColor = [UIColor colorWithRed:0.1 green:0.5 blue:1.0 alpha:0.76];
        
    }
    
    
    
    return annotationView;
}

- (BOOL)mapView:(MGLMapView *)mapView annotationCanShowCallout:(id<MGLAnnotation>)annotation {
    return true;
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
