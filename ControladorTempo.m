//
//  ControladorTempo.m
//  Delegate
//
//  Created by Rafael Brigagão Paulino on 23/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "ControladorTempo.h"

@implementation ControladorTempo

@synthesize delegate = _delegate;

-(void)iniciouContagem
{
    contador = 5;
    
    //disparar o timer
    //target: e onde o metodo que sera disparado está implementado
    //selector: nome do metodo que sera disparado. quando passamos o nome do metodo como parametro, precisamos usar o @selector(<nome do metodo>)
    timerSegundos = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(contagemRegressiva) userInfo:nil repeats:YES];
    
    [_delegate textoStatusDeveSerAlterado:@"Comecou!!"];
}

-(void)contagemRegressiva
{
   
    [_delegate textoStatusDeveSerAlterado:@"Em contagem..."];
    
    if (contador > 0){
       //contagem continua
        NSString *textoContagem = [NSString stringWithFormat:@"Contando %d", contador];
        contador--;
        
        //aviso a viewContrller _delegate que o valor da contagem mudou e ela deve alterar o texto que o usuario esta vendo
        
        [_delegate textoContadorDeveSerAlterado:textoContagem];
        
    }else{
       //acabou a contagem
        [self finalizouContagem];
    }
        
}

-(void)finalizouContagem
{
    [_delegate textoStatusDeveSerAlterado:@"Finalizou Contagem."];
    [_delegate textoContadorDeveSerAlterado:@"Game over!"];
    //parar o NSTimer
    [timerSegundos invalidate];
}



@end
