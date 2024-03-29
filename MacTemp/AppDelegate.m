//
//  AppDelegate.m
//  MacTemp
//
//  Created by Andrey Rusinovich on 13.08.2021.
//

#import "AppDelegate.h"
#import "CPUTempManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    
    menu = [[NSMenu alloc] initWithTitle:@"Menu"];
    NSMenuItem *quitButton = [[NSMenuItem alloc] initWithTitle:@"Quit" action:@selector(quitApp) keyEquivalent:@"q"];
    [menu addItem:quitButton];
    
    [statusItem setMenu:menu];
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(temp:) userInfo:nil repeats:YES];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (double)temp:(NSTimer *)timer
{
    double temperature = CPUTempManager.temperature;
    [[statusItem button] setTitle:[NSString stringWithFormat:@"%.f°", temperature]];
    return temperature;
}

- (void)quitApp
{
    [[NSApplication sharedApplication] terminate:nil];
}

@end
