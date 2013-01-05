//
//  PrincipalViewController.h
//  Delegate
//
//  Created by Rafael Brigagão Paulino on 23/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ControladorTempo.h"

@interface PrincipalViewController : UIViewController <ControladorTempoDelegate>
{
    IBOutlet UILabel *statusContagem;
    IBOutlet UILabel *contagem;
    
    ControladorTempo *controlador;
}


-(IBAction)iniciarClicado:(id)sender;

@end
