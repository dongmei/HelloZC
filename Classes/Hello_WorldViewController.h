//
//  Hello_WorldViewController.h
//  Hello World
//
//  Created by Dongmei Hu on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HelloworldBrain.h"


@interface Hello_WorldViewController : UIViewController {
	IBOutlet UILabel *display;
	HelloworldBrain *brain;
	BOOL userIsInTheMiddleOfTypingANumber;
}

- (IBAction)digitPress:(UIButton *)sender;
- (IBAction)operationPress:(UIButton *)sender;

@end

