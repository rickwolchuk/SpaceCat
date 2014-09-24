//
//  HudNode.h
//  SpaceCat
//
//  Created by Rick Wolchuk on 9/17/14.
//  Copyright (c) 2014 Rick. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface HudNode : SKNode
@property (nonatomic)NSInteger lives;
@property (nonatomic) NSInteger score;

+(instancetype) hudAtPosition:(CGPoint)position inFrame:(CGRect)frame;

-(void) addPoints: (NSInteger)points;
-(BOOL)loseLife;

@end
