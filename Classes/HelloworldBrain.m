//
//  HelloworldBrain.m
//  Hello World
//
//  Created by Dongmei Hu on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloworldBrain.h"


@implementation HelloworldBrain

- (void) performWaitingOperation{
	if ([@"+" isEqual:waitingOperation]){
		operand = waitingOperand + operand;
	}else if ([@"-" isEqual:waitingOperation]) {
			operand = waitingOperand - operand;
	}else if ([@"*" isEqual:waitingOperation]) {
		operand = waitingOperand * operand;
	}else if ([@"/" isEqual:waitingOperation]) {
		if (operand) {
		operand = waitingOperand / operand;
		}
	}

}

@synthesize operand;
/*
- (void) setOperand:(double)anOperand
{
		operand = anOperand;
}*/

- (double) performOperation: (NSString *)operation
{
	if ([operation isEqual:@"sqrt"]){
		operand = sqrt(operand);
	}else {
		[self performWaitingOperation];
		waitingOperation = operation;
		waitingOperand = operand;
	}

	return operand;
}

@end
