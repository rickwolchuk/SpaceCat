//
//  ProjectileNode.h
//  SpaceCat
//
//  Created by Rick Wolchuk on 8/17/14.
//  Copyright (c) 2014 Rick. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface ProjectileNode : SKSpriteNode


+(instancetype) projectileAtPosition:(CGPoint)position;
-(void)moveTowardsPosition: (CGPoint)position;
@end
