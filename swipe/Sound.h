//
//  Sound.h
//  swipe
//
//  Created by James on 6/16/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface Sound : NSObject

- (SystemSoundID) SoundID;

+ (Sound *) getSoundByFilename:(NSString *) filename;

@end