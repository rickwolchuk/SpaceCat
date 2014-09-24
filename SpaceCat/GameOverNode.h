//
//  GameOverNode.h
//  SpaceCat
//
//  Created by Rick Wolchuk on 9/17/14.
//  Copyright (c) 2014 Rick. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GameOverNode : SKNode

+(instancetype) gameOverAtPosition:(CGPoint)position;

-(void)performAnimation;


@end
