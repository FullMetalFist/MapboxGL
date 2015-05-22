//
//  Annotation.h
//  PlayingWithMapboxGL
//
//  Created by Michael Vilabrera on 5/22/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapboxGL/MGLAnnotation.h>

@interface Annotation : NSObject

+ (instancetype) annotationWithLocation:(CLLocationCoordinate2D)coordinate title:(NSString *)title subtitle:(NSString *)subtitle;
- (instancetype) initWithLocation:(CLLocationCoordinate2D) coordinate title:(NSString *)title subtitle:(NSString *)subtitle;

@end
