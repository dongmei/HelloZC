	//
//  Hello_WorldViewController.m
//  Hello World
//
//  Created by Dongmei Hu on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Hello_WorldViewController.h"

@interface Hello_WorldViewController()
	@property (readonly) HelloworldBrain *brain;//?????
@end

@implementation Hello_WorldViewController

- (HelloworldBrain *)brain
{
	if (!brain) {
		brain = [[HelloworldBrain alloc] init];
	}
	return brain;
}

- (IBAction)digitPress:(UIButton *)sender
{
	//NSString *digit = [[sender titleLabel]text];?????
	NSString *digit = sender.titleLabel.text;
	if (userIsInTheMiddleOfTypingANumber) {
		// [display setText:[[display text] stringByAppendingString:digit]];
		display.text = [display.text stringByAppendingString:digit];
	}else {
		display.text = digit;
		userIsInTheMiddleOfTypingANumber = YES;
	}
	
	if (userIsInTheMiddleOfTypingANumber) {
		//[[self brain] setOperand:[[display text]doubleValue]];
		self.brain.operand = [display.text doubleValue]; //????? why display.text.doubleValue
		userIsInTheMiddleOfTypingANumber = NO;
	}
} 

- (IBAction)operationPress:(UIButton *)sender
{

	NSString *operation = [[sender titleLabel]text];
	//double result = [[self brain] performOperation:operation];//return type
	[self.brain performOperation:operation]; //why not self.brain
	display.text = [NSString stringWithFormat:@"%f", self.brain.operand];//????? sself.brain: self is a must
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	[super loadView];
	Meii *meiiViewController = [[Meii alloc] init];
	[self.view addSubview:meiiViewController.view];
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
