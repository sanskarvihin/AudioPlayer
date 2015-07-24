//
//  SongsData.h
//  AudioPlayer
//
//  Created by Bipin Gohel on 16/08/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SongsData : UIViewController <UITableViewDelegate,UITableViewDataSource,UINavigationBarDelegate>{
	UITableView *songsTable;
	NSArray *songsList;
	UINavigationController *navigationCont;

}
@property(nonatomic,retain) UITableView *songsTable;
@property(nonatomic,retain) NSArray *songsList;
@property(nonatomic,retain) UINavigationController *navigationCont;

@end
