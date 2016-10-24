//
//  DefaultMapView.h
//  mapsInObjC
//
//  Created by Jordan Kiley on 10/22/16.
//  Copyright © 2016 Jordan Kiley. All rights reserved.
//

#import <Mapbox/Mapbox.h>
#import "MapViewController.h"

@interface DefaultMapView : MGLMapView <MGLMapViewDelegate>

- (void)setupMap;
@end
