//
//  Annotation.m
//  PlayingWithMapboxGL
//
//  Created by Michael Vilabrera on 5/22/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "Annotation.h"

@interface Annotation()

@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *subtitle;

@end

@implementation Annotation

+ (instancetype) annotationWithLocation:(CLLocationCoordinate2D)coordinate title:(NSString *)title subtitle:(NSString *)subtitle {
    return [[self alloc] initWithLocation:coordinate title:title subtitle:subtitle];
}

- (instancetype) initWithLocation:(CLLocationCoordinate2D)coordinate title:(NSString *)title subtitle:(NSString *)subtitle {
    if (self = [super init]) {
        _coordinate = coordinate;
        _title = title;
        _subtitle = subtitle;
    }
    return self;
}

@end
