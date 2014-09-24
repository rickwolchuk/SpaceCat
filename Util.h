//
//  Util.h
//  SpaceCat
//
//  Created by Rick Wolchuk on 8/24/14.
//  Copyright (c) 2014 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>

static const int ProjectileSpeed = 400;

static const int SpaceDogMinSpeed = -100;
static const int SpaceDogMaxSpeed = -50;
static const int MaxLives = 3;
static const int PointsPerHit = 100;

typedef NS_OPTIONS(uint32_t, THCollisionCategory) {
    CollisionCategoryEnemy        = 1 << 0,       // 0000
    CollisionCategoryProjectile   = 1 << 1,       // 0010
    CollisionCategoryDebris       = 1 << 2,       // 0100
    CollisionCategoryGround       = 1 << 3        // 1000
};

@interface Util : NSObject

+(NSInteger) randomWithMin:(NSInteger)min max:(NSInteger)max;

@end
