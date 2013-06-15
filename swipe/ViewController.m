//
//  ViewController.m
//  swipe
//
//  Created by James on 6/15/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UISwipeGestureRecognizer *rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRight)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:rightSwipe];
    
    UISwipeGestureRecognizer *leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:leftSwipe];
    
    UISwipeGestureRecognizer *upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp)];
    upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:upSwipe];
}

- (void)swipeRight
{
    self.swipeIdentifier.text = @"NOO!";
    
    SystemSoundID SoundID;
    NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"no" ofType:@"mp3"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], &SoundID);
    AudioServicesPlaySystemSound(SoundID);
}

- (void)swipeLeft
{
    self.swipeIdentifier.text = @"Yeaahh!";
    
    SystemSoundID SoundID;
    NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"yeah" ofType:@"mp3"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], &SoundID);
    AudioServicesPlaySystemSound(SoundID);
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
