//
//  SongsData.m
//  AudioPlayer
//
//  Created by Bipin Gohel on 16/08/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SongsData.h"
#import "MyPlayer.h"


@implementation SongsData
@synthesize songsTable,songsList,navigationCont;

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
	
	
	//navigationCont = [[UINavigationController alloc] initWithRootViewController:<#(UIViewController *)rootViewController#>;
	
		
	
	songsTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 460) style:UITableViewStyleGrouped];
	[songsTable setDelegate:self];
	[songsTable setDataSource:self];
	//[navigationCont.view addSubview:songsTable];
	[self.view addSubview:navigationCont.view];
	[self.view addSubview:songsTable];
	//Gives the document directory path
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	
	
	NSString *documentsDirectory = [paths objectAtIndex:0];
	
	///NSArray *p = NSSearchPathForDirectoriesInDomains(documentsDirectory, NSUserDomainMask, YES);
	
	
	NSLog(@"Path:%@",documentsDirectory);
	//NSLog(@"Songs Path:%@",)
	
	//make a file name to write the data to using the
	//documents directory:
	NSFileManager *fileManager = [NSFileManager defaultManager];
	
	//get the array of subpaths of the directory
	NSArray *subPath = [fileManager subpathsAtPath:documentsDirectory];
	
	//path of song directory
	NSString *songDirectory = [documentsDirectory stringByAppendingPathComponent:[subPath objectAtIndex:1]];
	
	//array of all songs
	NSArray *songsPath = [fileManager subpathsAtPath:songDirectory];
//	NSArray *songsAvailable = [fileManager contentsOfDirectoryAtPath:songPath error:nil];
	//NSData *songsAvailable = [fileManager contentsAtPath:songPath];
	
	//NSString *song1 = [documentsDirectory stringByAppendingPathComponent:[songsPath objectAtIndex:0]];
	
	NSLog(@"songPath %@",songDirectory);
	NSLog(@"songs available%@",[songsPath objectAtIndex:0]);
	
	
	songsList=songsPath;
	/*
	NSString *directoryPath = [documentsDirectory stringByAppendingPathComponent:@"songs"];
	BOOL *directoryExists;
	if(![fileManager fileExistsAtPath:directoryPath isDirectory:directoryExists])
	{
		
	}
	*/
	//songsList = [NSArray arrayWithObjects:@"Bin Tere",@"Jab Mila Tu",nil];
					  
}
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
	return YES;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //return [songsList count];
	return 2;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
	
	//NSMutableDictionary *tempDict = [array objectAtIndex:indexPath.row];
	
	cell.textLabel.text = [songsList objectAtIndex:indexPath.row];
	
	
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	//NSString *str = [detailArray objectAtIndex:indexPath.row];
//	NSLog(@"DetailArrayElementAccessed %@",str);
//	
//	FirstDetailView *fdv = [[FirstDetailView alloc]initWithNibName:@"FirstDetailView" bundle:nil];
//	
//	[fdv setDescription:str];
//	
//	TabBarTestAppDelegate *appDel=(TabBarTestAppDelegate*)[[UIApplication sharedApplication] delegate];
//	[appDel.navigationController pushViewController:fdv animated:YES];
	

//
	MyPlayer *mp = [[MyPlayer alloc]initWithNibName:@"MyPlayer" bundle:nil];
	[mp setPath:[songsList objectAtIndex:indexPath.row]];
	 [self.navigationController pushViewController:mp animated:YES];
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
