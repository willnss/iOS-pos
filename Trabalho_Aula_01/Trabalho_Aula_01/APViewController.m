//
//  APViewController.m
//  Trabalho_Aula_01
//
//  Created by rxdev on 10/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "APViewController.h"

@implementation APViewController
@synthesize meuLabel;
@synthesize meuTexto;
@synthesize meuSliderLabel;
@synthesize meuSlider;
@synthesize meuSwitch;

- (IBAction)exibeUIAlertView {
    UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Aviso" message:@"Operação Realizada" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alerta show];
}

- (IBAction)exibeUIActionSheet {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Deseja continuar?" delegate:self cancelButtonTitle:@"Não" destructiveButtonTitle:@"Sim" otherButtonTitles: nil];
    
    [actionSheet showInView: self.view];
}

- (IBAction)exibeUILabel {
    meuLabel.text = @"Texto alterado";
}

- (IBAction)exibeUITextField {
    UIAlertView *alerta2 = [[UIAlertView alloc] initWithTitle:@"UITextField" message:meuTexto.text delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
    [alerta2 show];
}

- (IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)backgroundTouch {
    [meuTexto resignFirstResponder];
}

- (IBAction)exibeSliderValueChanged {
    int sv = (int)meuSlider.value;
    meuSliderLabel.text = [[NSString alloc] initWithFormat:@"%d", sv];
}

- (IBAction)exibeSwitchValueChanged {
    NSString *mTexto = @"Desligado";
    if (meuSwitch.isOn)
        mTexto = @"Ligado";
    
    UIAlertView *mAlert = [[UIAlertView alloc] initWithTitle:@"UISwitch" message:mTexto delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
    [mAlert show];
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSString *texto = [[NSString alloc] initWithFormat:@"Pressionou não!"];
    if (buttonIndex != [actionSheet cancelButtonIndex])
    {
        texto = [[NSString alloc] initWithFormat:@"Pressionou sim!"];
    }
    
    UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Decisão" message:texto delegate:nil cancelButtonTitle:@"Fechar" otherButtonTitles: nil];
    [alerta show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMeuLabel:nil];
    [self setMeuTexto:nil];
    [self setMeuSliderLabel:nil];
    [self setMeuSlider:nil];
    [self setMeuSwitch:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
@end
