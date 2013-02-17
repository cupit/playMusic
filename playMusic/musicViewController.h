//
//  musicViewController.h
//  playMusic
//
//  Created by Maciej Cupial on 12/29/12.
//  Copyright (c) 2012 Maciej Cupial. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface musicViewController : UIViewController <AVAudioPlayerDelegate>
- (IBAction)play:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)volumeControl:(id)sender;
@property (strong, nonatomic) IBOutlet UISlider *volumeControl;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;



@end
