//
//  ViewController.h
//  Test_IOS_0710
//
//  Created by A4-iMAC05 on 07/10/2019.
//  Copyright © 2019 esTech. All rights reserved.
//

#import <UIKit/UIKit.h>

bool didSelect;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *btnNext;
@property (weak, nonatomic) IBOutlet UILabel *lbStudent;
@property (weak, nonatomic) IBOutlet UITextField *tfUser;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;

- (IBAction)actionNext:(id)sender;


@end

