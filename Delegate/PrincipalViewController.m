//
//  PrincipalViewController.m
//  Delegate
//
//  Created by Rafael Brigagão Paulino on 23/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

-(void) textoStatusDeveSerAlterado:(NSString*)novoTexto{
    //atualizando o texto da label
    statusContagem.text = novoTexto;
}

-(void) textoContadorDeveSerAlterado:(NSString*)novaContagem{
    //atualizando o texto da label
    contagem.text = novaContagem;
}

-(IBAction)iniciarClicado:(id)sender
{
    //inicio do processo
    [controlador iniciouContagem];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    controlador = [[ControladorTempo alloc] init];
    controlador.delegate = self;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
