//
//  ViewController.m
//  swipe
//
//  Created by James on 6/15/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property SystemSoundID SoundNo;
@property SystemSoundID SoundYeah;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UISwipeGestureRecognizer *rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRight)];
    [rightSwipe setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:rightSwipe];
    
    UISwipeGestureRecognizer *leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:leftSwipe];
    
    UISwipeGestureRecognizer *upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp)];
    upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:upSwipe];
    
    [self loadSounds];
}

- (void)loadSounds
{
    NSString* soundFile = [[NSBundle mainBundle] pathForResource:@"no" ofType:@"mp3"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], &(self->_SoundNo));
    
    soundFile = [[NSBundle mainBundle] pathForResource:@"yeah" ofType:@"mp3"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], &(self->_SoundYeah));
}


- (void)swipeRight
{
    self.swipeIdentifier.text = @"NOO!";
    AudioServicesPlaySystemSound(self.SoundNo);
}

- (void)swipeLeft
{
    self.swipeIdentifier.text = @"Yeaahh!";
    AudioServicesPlaySystemSound(self.SoundYeah);
}

- (void)swipeUp
{
    self.swipeIdentifier.text = @"Maybe";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
