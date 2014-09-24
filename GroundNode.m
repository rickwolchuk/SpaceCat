//
//  GroundNode.m
//  SpaceCat
//
//  Created by Rick Wolchuk on 9/12/14.
//  Copyright (c) 2014 Rick. All rights reserved.
//

#import "GroundNode.h"
#import "Util.h"

@implementation GroundNode

+(instancetype) groundWithSize: (CGSize)size
{
    GroundNode *ground = [self spriteNodeWithColor:[SKColor clearColor] size:size];
    ground.name = @"Ground";
    ground.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:size];
    ground.position = CGPointMake(size.width/2,size.height/2);
    ground.physicsBody.affectedByGravity = NO;
    [ground setupPhysicsBody];
    return ground;
}
- (void) setupPhysicsBody {
    self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.frame.size];
    self.physicsBody.affectedByGravity = NO;
    self.physicsBody.dynamic = NO;
    self.physicsBody.categoryBitMask = CollisionCategoryGround;
    self.physicsBody.collisionBitMask = CollisionCategoryDebris;
    self.physicsBody.contactTestBitMask = CollisionCategoryEnemy;
}
@end
