//
//  RiddleViewController.m
//  Adventure
//
//  Created by Kagan Riedel on 1/8/14.
//  Copyright (c) 2014 Kagan Riedel. All rights reserved.
//

#import "RiddleViewController.h"

@interface RiddleViewController ()
{
    __weak IBOutlet UIButton *button1;
    __weak IBOutlet UIButton *button2;
    __weak IBOutlet UIButton *button3;
    __weak IBOutlet UITextView *storyTextView;
    __weak IBOutlet UITextView *riddleTextView;
    __weak IBOutlet UITextField *answerInput;
    __weak IBOutlet UIButton *goButton;
}

@end

@implementation RiddleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    UIImage *image = [UIImage imageNamed:@"clown.png"];
//    self.imageView = [[UIImageView alloc] initWithImage:image];
	// Do any additional setup after loading the view.
}
- (IBAction)onGoButtonPressed:(id)sender
{
    NSRange isRange = [answerInput.text rangeOfString:@"hole" options:NSCaseInsensitiveSearch];
    if (isRange.location != NSNotFound) {
        button1.alpha = 1;
        button2.alpha = 1;
        button3.alpha = 1;
        storyTextView.alpha = 1;
        riddleTextView.alpha = 0;
        answerInput.alpha = 0;
        goButton.alpha = 0;
        [self.view endEditing:YES];
        
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Oops!" message:@"Wrong answer, try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
