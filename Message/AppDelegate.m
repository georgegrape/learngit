//
//  AppDelegate.m
//  Message
//
//  Created by lanou3g on 15/6/27.
//  Copyright (c) 2015年 高秋实. All rights reserved.
//

// App Key     k51hidwq1mpqb
// App Secret  cDS0h2n34VN

#import "AppDelegate.h"
#import <RongIMKit/RongIMKit.h>
#import "ViewController.h"

#define RONGCLOUD_IM_APPKEY @"k51hidwq1mpqb" // online key

#define iPhone6                                                                \
([UIScreen instancesRespondToSelector:@selector(currentMode)]                \
? CGSizeEqualToSize(CGSizeMake(750, 1334),                              \
[[UIScreen mainScreen] currentMode].size)           \
: NO)
#define iPhone6Plus                                                            \
([UIScreen instancesRespondToSelector:@selector(currentMode)]                \
? CGSizeEqualToSize(CGSizeMake(1242, 2208),                             \
[[UIScreen mainScreen] currentMode].size)           \
: NO)

#define kDeviceToken @"RongCloud_SDK_DeviceToken"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    NSString *_deviceTokenCache = [[NSUserDefaults standardUserDefaults]objectForKey:@"dPmOiuI1FZyblQQfsl+A5akjgUFViiT795bYBEsMnWj2YzP6wZ48eQA9wzghiuvNjzggBExhp6WnRjEo3Eq3lwiZECkzQTyR"];
    
    //初始化融云SDK，
    [[RCIM sharedRCIM] initWithAppKey:RONGCLOUD_IM_APPKEY deviceToken:_deviceTokenCache];
    
    [[RCIM sharedRCIM] connectWithToken:@"dPmOiuI1FZyblQQfsl+A5akjgUFViiT795bYBEsMnWj2YzP6wZ48eQA9wzghiuvNjzggBExhp6WnRjEo3Eq3lwiZECkzQTyR" success:^(NSString *userId) {
        
        NSLog(@"成功");
        
        
    } error:^(RCConnectErrorCode status) {
        
        NSLog(@"失败");
    } tokenIncorrect:^{
        
        
    }];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    ViewController *VC = [[ViewController alloc] init];
    UINavigationController *NC = [[UINavigationController alloc] initWithRootViewController:VC];
    self.window.rootViewController = NC;
    
    [self.window makeKeyAndVisible];

    
    
            
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
