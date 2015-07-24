//
//  MyPlayer.h
//  AudioPlayer
//
//  Created by Bipin Gohel on 16/08/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@class AVAudioPlayer;


@interface MyPlayer : UIViewController {
	IBOutlet UIButton *playButton;
	IBOutlet UIButton *stopButton;
	AVAudioPlayer *audioPlayer;
	NSString *path;
}
@property (nonatomic, retain) IBOutlet UIButton *playButton;
@property (nonatomic, retain) IBOutlet UIButton *stopButton;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer;

-(void)setPath:(NSString*)SongPath;
-(IBAction)play;
-(IBAction)stop;

@end
