//
//  ViewController.m
//  Test_IOS_0710
//
//  Created by A4-iMAC05 on 07/10/2019.
//  Copyright © 2019 esTech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void) viewDidAppear:(BOOL)animated{
    
    [_btnNext.titleLabel setText:@"¡SIGUIENTE VISTA!"];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"Bienvenido a es[tech]"
        message: @"Selecciona el ciclo que estás estudiando"
        preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *btnDam = [UIAlertAction  actionWithTitle: @"DAM" style: UIAlertActionStyleDefault handler: ^(UIAlertAction *action){
        self -> _lbStudent.text = [[NSString alloc] initWithFormat:@"%@ DAM", self -> _lbStudent.text];
        didSelect = YES;
    }];
    
    UIAlertAction *btnVj = [UIAlertAction actionWithTitle: @"Videojuegos" style: UIAlertActionStyleDefault handler: ^(UIAlertAction *action){
        self -> _lbStudent.text = [[NSString alloc] initWithFormat:@"%@ Videojuegos", self -> _lbStudent.text];
        didSelect = YES;
    }];
    
    [alert addAction:btnDam];
    [alert addAction:btnVj];
    
    if (didSelect != YES){
        [self presentViewController:alert animated:YES completion:nil];
    }
}


- (IBAction)actionNext:(id)sender {
    if ([_tfUser.text isEqual:@""] || [_tfPassword.text isEqual:@""]){
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"ERROR" message:@"¡Los campos de usuario y contraseña son obligatorios!" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Aceptar" style:UIAlertActionStyleDefault handler:nil];
        
        [alert addAction:ok];
        
        [self presentViewController:alert animated:YES completion:nil];
    }else{
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        
        InsideViewController *newViewController = (InsideViewController *) [storyBoard instantiateViewControllerWithIdentifier:@"insideViewController"];
        
        newViewController.userName = _tfUser.text;
        
        [self.navigationController pushViewController:newViewController animated:YES];
    }
}
@end
