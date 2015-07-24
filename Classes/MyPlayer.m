//
//  MyPlayer.m
//  AudioPlayer
//
//  Created by Bipin Gohel on 16/08/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyPlayer.h"


@implementation MyPlayer
@synthesize playButton,stopButton,audioPlayer;
/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];

	// Get the file path to the song to play.
	//NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Bin Tere"ofType:@"mp3"];
	
	// Convert the file path to a URL.
	NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:path];
	
	//Initialize the AVAudioPlayer.
						initWithConten	self.audioPlayer = [[AVAudioPlayer alloc]
tsOfURL:fileURL error:nil];
	
	// Preloads the buffer and prepares the audio for playing.
	[self.audioPlayer prepareToPlay];
	
	//[filePath release];
	[fileURL release];
	
}

-(void)setPath:(NSString*)SongPath
{
	path = SongPath;
}
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

-(IBAction)play {
	
	// Make sure the audio is at the start of the stream.
	//self.audioPlayer.currentTime = 0;
	
	[self.audioPlayer play];
	
}

-(IBAction)stop {
	
	[self.audioPlayer stop];
	
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
