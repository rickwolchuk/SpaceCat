//
//  Util.m
//  SpaceCat
//
//  Created by Rick Wolchuk on 8/24/14.
//  Copyright (c) 2014 Rick. All rights reserved.
//

#import "Util.h"

@implementation Util

+(NSInteger) randomWithMin:(NSInteger)min max:(NSInteger)max{
    return arc4random()%(max - min) +min;
}
@end
