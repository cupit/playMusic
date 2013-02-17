//
//  musicViewController.m
//  playMusic
//
//  Created by Maciej Cupial on 12/29/12.
//  Copyright (c) 2012 Maciej Cupial. All rights reserved.
//

#import "musicViewController.h"

@interface musicViewController ()

@end

@implementation musicViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:@"cichanoc" ofType:@"mp3"]];
    
    NSError *error;
    
    _audioPlayer = [[AVAudioPlayer alloc]
                    initWithContentsOfURL:url error:&error];
    
    if (error) {
        NSLog(@"error in audioplayer: %@", error);
    } else {
        _audioPlayer.delegate = self;
        [_audioPlayer prepareToPlay];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)play:(id)sender {
    [_audioPlayer play];
}

- (IBAction)stop:(id)sender {
    [_audioPlayer stop];
}
- (IBAction)volumeControl:(id)sender {
    if (_audioPlayer != nil) {
        _audioPlayer.volume = _volumeControl.value;
    }
}
@end
