//
//  ViewController.m
//  swipe
//
//  Created by James on 6/15/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import "ViewController.h"
#import "Sound.h"

@interface ViewController ()
{
    SystemSoundID SoundNo, SoundYeah;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self bindSwipe:@selector(swipeRight) withDirection:UISwipeGestureRecognizerDirectionRight];
    [self bindSwipe:@selector(swipeLeft) withDirection:UISwipeGestureRecognizerDirectionLeft];
    [self bindSwipe:@selector(swipeUp) withDirection:UISwipeGestureRecognizerDirectionUp];
    
    SoundNo = [[Sound getSoundByFilename:@"no"] SoundID];
    SoundYeah = [[Sound getSoundByFilename:@"yeah"] SoundID];
}

- (void)bindSwipe:(SEL) swipeMethod withDirection:(UISwipeGestureRecognizerDirection) swipeGesture
{    
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:swipeMethod];
    [swipe setDirection:swipeGesture];
    [self.view addGestureRecognizer:swipe];
}

- (void)swipeRight
{
    self.swipeIdentifier.text = @"NOO!";
    AudioServicesPlaySystemSound(SoundNo);
}

- (void)swipeLeft
{
    self.swipeIdentifier.text = @"Yeaahh!";
    AudioServicesPlaySystemSound(SoundYeah);
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
