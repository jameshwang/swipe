//
//  Sound.m
//  swipe
//
//  Created by James on 6/16/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import "Sound.h"
@interface Sound()
{
    SystemSoundID SoundID;
}

@property NSString *filename;

@end

@implementation Sound

+ (Sound *) getSoundByFilename:(NSString *) filename
{
    Sound *resultingSound = [[Sound alloc] init];
    resultingSound.filename = filename;
    
    return resultingSound;
}

- (SystemSoundID) SoundID
{
    NSString* soundFile = [[NSBundle mainBundle] pathForResource:[self filename] ofType:@"mp3"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], &SoundID);
    return SoundID;
}

@end

