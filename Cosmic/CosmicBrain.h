//
//  CosmicBrain.h
//  Cosmic
//
//  Created by David Kirkby on 3/11/13.
//  Copyright (c) 2013 David Kirkby. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CosmicBrain;
@protocol CosmicBrainDelegate <NSObject>
- (void) setExposureCount:(int)count;
- (void) addAnImage:(UIImage*)image;
@end

@interface CosmicBrain : NSObject

@property (nonatomic) NSUInteger stampCount;

@property(nonatomic,assign) id <CosmicBrainDelegate> brainDelegate;

- (void) initCapture;
- (void) beginCapture;
- (void) captureImage;

@end
