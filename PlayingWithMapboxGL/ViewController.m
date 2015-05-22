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
#import "Annotation.h"

@interface ViewController () <MGLMapViewDelegate>

@end

@implementation ViewController

// why add this before vDL?
- (NSString *)mapView:(MGLMapView *)mapView symbolNameForAnnotation:(id<MGLAnnotation>)annotation {
    return @"secondary_marker";
    /*
      type of annotation see
     https://github.com/mapbox/mapbox-gl-styles/blob/mb-pages/sprites/mapbox-streets%402x.json
     */
}

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
    MGLMapView *mapView = [[MGLMapView alloc] initWithFrame:self.view.bounds accessToken:API_ACCESS_TOKEN styleURL:[NSURL URLWithString:@"asset://styles/dark-v7.json"]];
    mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [mapView setCenterCoordinate:CLLocationCoordinate2DMake(40.7528, -73.9765) zoomLevel:15 animated:YES];
    [self.view addSubview:mapView];
    
    // set delegate to self
    mapView.delegate = self;
    
    Annotation *chrysler = [[Annotation alloc] initWithLocation:CLLocationCoordinate2DMake(40.7517, -73.9753) title:@"Chrysler Building" subtitle:@"nice design"];
    [mapView addAnnotation:chrysler];
}

- (BOOL) mapView:(MGLMapView *)mapView annotationCanShowCallout:(id<MGLAnnotation>)annotation {
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
