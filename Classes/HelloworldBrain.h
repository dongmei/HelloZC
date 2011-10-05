//
//  HelloworldBrain.h
//  Hello World
//
//  Created by Dongmei Hu on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface HelloworldBrain : NSObject {
	@private
	double operand;
	NSString *waitingOperation;
	double waitingOperand;
}

@property double operand;   //- (void) setOperand:(double)anOperand;
- (double) performOperation: (NSString *)operation;

@end
