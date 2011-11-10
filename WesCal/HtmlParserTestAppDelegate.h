//
//  HtmlParserTestAppDelegate.h
//  HtmlParserTest
//
//  Created by Kiichi Takeuchi on 2/24/10.
//  Copyright ObjectGraph LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HtmlParserTestViewController;

@interface HtmlParserTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HtmlParserTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HtmlParserTestViewController *viewController;

@end

