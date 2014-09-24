//
//  SpaceCatNode.h
//  SpaceCat
//
//  Created by Rick Wolchuk on 8/10/14.
//  Copyright (c) 2014 Rick. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SpaceCatNode : SKSpriteNode

+(instancetype) spaceCatAtPosition: (CGPoint)position;

-(void) performTap;
@end
