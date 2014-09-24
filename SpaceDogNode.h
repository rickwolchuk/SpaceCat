//
//  SpaceDogNode.h
//  SpaceCat
//
//  Created by Rick Wolchuk on 8/24/14.
//  Copyright (c) 2014 Rick. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

typedef NS_ENUM(NSUInteger, SpaceDogType) {

    SpaceDogTypeA = 0,
    SpaceDogTypeB = 1,
};


@interface SpaceDogNode : SKSpriteNode
+(instancetype) spaceDogofType:(SpaceDogType)type;

@end
