//
//  RSAppDelegate.m
//  CocoaControls
//
//  Created by R0CKSTAR on 14-5-2.
//  Copyright (c) 2014年 P.D.Q. All rights reserved.
//

#import "RSAppDelegate.h"

#import "RSCCCore.h"

@interface RSAppDelegate () <NSTableViewDataSource, NSTableViewDelegate>

@end

@implementation RSAppDelegate

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return 10;
}

- (void)controlsDidLoad:(NSNotification *)aNotification
{
    NSLog(@"%@", aNotification.object);
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(controlsDidLoad:) name:RSCCCoreControlsDidLoadNotification object:nil];
}

@end
