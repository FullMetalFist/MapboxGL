//
//  ViewController.m
//  PlayingWithMapboxGL
//
//  Created by Michael Vilabrera on 5/22/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "ViewController.h"
#import <MapboxGL/MapboxGL.h>
#import <CoreLocation/CoreLocation.h>
#import "Constants.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
      most important, app will not run without this line
     */
    [MGLAccountManager setMapboxMetricsEnabledSettingShownInApp:YES];
    /*
     the rest is covered in the tutorial
     */
    MGLMapView *mapView = [[MGLMapView alloc] initWithFrame:self.view.bounds accessToken:API_ACCESS_TOKEN];
    mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [mapView setCenterCoordinate:CLLocationCoordinate2DMake(40.7528, -73.9765) zoomLevel:15 animated:YES];
    [self.view addSubview:mapView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
