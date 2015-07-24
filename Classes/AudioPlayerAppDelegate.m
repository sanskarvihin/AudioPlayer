//
//  AudioPlayerAppDelegate.m
//  AudioPlayer
//
//  Created by Bipin Gohel on 16/08/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "AudioPlayerAppDelegate.h"
#import "MyPlayer.h"
#import "SongsData.h"

@implementation AudioPlayerAppDelegate

@synthesize window, navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
	//MyPlayer *player = [[MyPlayer alloc]initWithNibName:@"MyPlayer" bundle:nil];
	
	SongsData *sd = [[SongsData alloc]initWithNibName:@"SongsData" bundle:nil];
	
	navigationController=[[UINavigationController alloc] initWithRootViewController:sd];
	
	[window addSubview:navigationController.view];
	[window makeKeyAndVisible];
	
/*
	//get the documents directory:
	NSArray *paths = NSSearchPathForDirectoriesInDomains
	(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	
	//make a file name to write the data to using the
	//documents directory:
	NSFileManager *fileManager = [NSFileManager defaultManager];
	
	NSString *directoryPath = [documentsDirectory stringByAppendingPathComponent:@"songs"];
	BOOL *directoryExists;
	if(![fileManager fileExistsAtPath:directoryPath isDirectory:directoryExists])
	{
		
	}*/
    
	//NSString *fullFileName = [NSString stringWithFormat:@"%@/arraySaveFile", documentsDirectory];
/*	
	//create an array and add values to it:
	NSMutableArray *array = [[NSMutableArray alloc] init];
	[array addObject:@"One"];
	[array addObject:@"Two"];
	[array addObject:@"Three"];
	
	//this statement is what actually writes out the array
	//to the file system:
	[array writeToFile:fullFileName atomically:NO];
	
	//get the documents directory:
	NSArray *paths1 = NSSearchPathForDirectoriesInDomains
	(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory1 = [paths1 objectAtIndex:0];
	
	//make a file name to write the data to using the
	//documents directory:
	NSString *fullFileName1 = [NSString stringWithFormat:@"%@/arraySaveFile", documentsDirectory1];
	
	//retrieve your array by using initWithContentsOfFile while passing
	//the name of the file where you saved the array contents.
	NSMutableArray *array1 = [[NSMutableArray alloc] initWithContentsOfFile:fullFileName1];
	
	//use an alert to display the first value in the array to prove
	//that you were able to save and retrieve the information.
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert"
													message:[array objectAtIndex:2]
												   delegate:self
										  cancelButtonTitle:@"OK"
										  otherButtonTitles: nil];
	
	[alert show];
	[alert release];
*/	
	return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
