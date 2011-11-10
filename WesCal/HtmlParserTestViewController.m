//
//  HtmlParserTestViewController.m
//  HtmlParserTest
//
//  Created by Kiichi Takeuchi on 2/24/10.
//  Copyright ObjectGraph LLC 2010. All rights reserved.
//

#import "HtmlParserTestViewController.h"

@implementation HtmlParserTestViewController
- (void)viewDidLoad {
    [super viewDidLoad];
	
	
	// Don't forget 
	// #import "TFHpple.h"
	NSData *htmlData = [[NSString stringWithContentsOfURL:[NSURL URLWithString: @"http://wesleying.org/category/events/"]] dataUsingEncoding:NSUTF8StringEncoding];
	TFHpple *xpathParser = [[TFHpple alloc] initWithHTMLData:htmlData];		
//	NSArray *elements  = [xpathParser search:@"//a[@href='http://wesleying.org/2011/11/07/no-shave-november/']"]; // get the page title
    NSArray *elements  = [xpathParser search:@"//h:href[re:test(., 'http://wesleying.org/2011/11', 'i')]"]; // get 
	TFHppleElement *element = [elements objectAtIndex:0];
	NSString *h3Tag = [element content];
    NSString *url = [element objectForKey:@"href"];
    NSString *Tagname = [element tagName];
    
	//NSDictionary *url = [element attributes];
	
    
    NSLog(@"h3Tag:%@ url:%@ tagname:%@", h3Tag, url, Tagname);
    mLabel.text = h3Tag;
	
	
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}



@end
