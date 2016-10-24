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


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
