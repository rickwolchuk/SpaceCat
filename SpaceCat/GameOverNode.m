//
//  GameOverNode.m
//  SpaceCat
//
//  Created by Rick Wolchuk on 9/17/14.
//  Copyright (c) 2014 Rick. All rights reserved.
//

#import "GameOverNode.h"

@implementation GameOverNode
+(instancetype) gameOverAtPosition:(CGPoint)position
{
    GameOverNode *gameOver = [self node];

    SKLabelNode *gameOverLabel = [SKLabelNode labelNodeWithFontNamed:@"Futura-CondensedExtraBold"];
    gameOverLabel.name = @"GameOver";
    gameOverLabel.text = @"Game Over Dude";
    gameOverLabel.fontSize = 46.5;
    gameOverLabel.position = position;
    [gameOver addChild:gameOverLabel];

    return gameOver;
}

-(void)performAnimation {
    SKLabelNode *label = (SKLabelNode*)[self childNodeWithName:@"GameOver"];
    label.xScale = 0;
    label.yScale = 0;
    SKAction *scaleUp = [SKAction scaleTo:1.2f duration:0.75];
    SKAction *scaleDown = [SKAction scaleTo:0.9f duration:0.25];
    SKAction *run = [SKAction runBlock:^{
        SKLabelNode *touchToRestart = [SKLabelNode labelNodeWithFontNamed:@"Futura-CondensedExtraBold"];
        touchToRestart.text = @"Want to play again?";
        touchToRestart.fontSize = 22;
        touchToRestart.position = CGPointMake(label.position.x, label.position.y-40);
        [self addChild:touchToRestart];
    }];


    SKAction *scaleSequence = [SKAction sequence:@[scaleUp, scaleDown, run]];
    [label runAction:scaleSequence];
}

@end
