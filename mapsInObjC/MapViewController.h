//
//  MapViewController.h
//  mapsInObjC
//
//  Created by Jordan Kiley on 10/21/16.
//  Copyright © 2016 Jordan Kiley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomAnnotationView.h"
@import Mapbox;

@interface MapViewController : UIViewController
@property (strong, nonatomic) IBOutlet MGLMapView *mapView;
@property (nonatomic, readwrite) MGLMapView *selectedStyle;
@property (nonatomic, readwrite) NSArray *timesSquarePlaces;
- (void)setupMap;
- (void)addAnnotations;
@end
