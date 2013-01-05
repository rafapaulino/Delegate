//
//  ControladorTempo.h
//  Delegate
//
//  Created by Rafael Brigagão Paulino on 23/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import <Foundation/Foundation.h>

//como criar um protocolo delegate
//1 - declarar o @protocol com os metodos a serem implementados com a classes delegada
//2 - criar um ponteiro delegate atraves da property mais abaixo
//3 - criar os metodos nesta classe controladortempo que irao mandar as mensagens para o delegate a respeito dos eventos gerados


//Na classe delegada (Principal viewController no nosso caso)
//4 - conectar o ponteiro delegate a classe delegada
//5 - declarar o protocolo no .h<controladortempodelegate>
//6 - implementar os metodos definidos abaixo no .m


//1 - declarar o @protocol com os metodos a serem implementados com a classes delegada
@protocol ControladorTempoDelegate <NSObject>

//quais metodos a classe que receber este protocolo deve/pode implementar
@required //metodos obrigatorios
-(void) textoStatusDeveSerAlterado:(NSString*)novoTexto;
-(void) textoContadorDeveSerAlterado:(NSString*)novaContagem;

//metodos opicionais
@optional

@end

@interface ControladorTempo : NSObject
{
    NSTimer *timerSegundos;
    int contador;
}

//ponteiro de quem e o delegate dessa classe
//ponteiros delegate sempre serao weak
@property (nonatomic, weak) id<ControladorTempoDelegate> delegate;


-(void)iniciouContagem;
-(void)finalizouContagem;

@end
