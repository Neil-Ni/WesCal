//
//  HtmlParserTestAppDelegate.m
//  HtmlParserTest
//
//  Created by Kiichi Takeuchi on 2/24/10.
//  Copyright ObjectGraph LLC 2010. All rights reserved.
//

#import "HtmlParserTestAppDelegate.h"
#import "HtmlParserTestViewController.h"

@implementation HtmlParserTestAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}



@end
