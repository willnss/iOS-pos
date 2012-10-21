//
//  APViewController.h
//  Trabalho_Aula_01
//
//  Created by rxdev on 10/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface APViewController : UIViewController <UIActionSheetDelegate>
- (IBAction)exibeUIAlertView;
- (IBAction)exibeUIActionSheet;
- (IBAction)exibeUILabel;
- (IBAction)exibeUITextField;
- (IBAction)textFieldReturn:(id)sender;
- (IBAction)backgroundTouch;
- (IBAction)exibeSliderValueChanged;
- (IBAction)exibeSwitchValueChanged;

@property (strong, nonatomic) IBOutlet UILabel *meuLabel;
@property (strong, nonatomic) IBOutlet UITextField *meuTexto;
@property (strong, nonatomic) IBOutlet UILabel *meuSliderLabel;
@property (strong, nonatomic) IBOutlet UISlider *meuSlider;
@property (strong, nonatomic) IBOutlet UISwitch *meuSwitch;
@end
