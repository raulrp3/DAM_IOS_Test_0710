//
//  InsideViewController.m
//  Test_IOS_0710
//
//  Created by A4-iMAC05 on 09/10/2019.
//  Copyright © 2019 esTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InsideViewController.h"

@implementation InsideViewController

- (void) viewDidLoad{
    
    [_lbHello setText:[[NSString alloc] initWithFormat:@"Hola %@", _userName]];
}

@end
