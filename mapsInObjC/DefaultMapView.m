//
//  DefaultMapView.m
//  mapsInObjC
//
//  Created by Jordan Kiley on 10/22/16.
//  Copyright © 2016 Jordan Kiley. All rights reserved.
//

#import "DefaultMapView.h"

@implementation DefaultMapView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)setupMap {

    [self setStyleURL:[MGLStyle lightStyleURLWithVersion:8]];
    self.autoresizingMask = UIViewAutoresizingFlexibleWidth| UIViewAutoresizingFlexibleHeight;
    self.tintColor = [UIColor greenColor];
    self.delegate = self;
    [self setCenterCoordinate:self.userLocation.coordinate zoomLevel:7 animated:true];
    self.showsUserLocation = true;
    [self setUserTrackingMode:MGLUserTrackingModeFollow];
}

@end
