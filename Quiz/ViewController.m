//
//  ViewController.m
//  Quiz
//
//  Created by Jim on 7/10/15.
//  Copyright (c) 2015 JMD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) int currentQuestionIndex;

@property  (nonatomic,copy) NSArray *questions;
@property   (nonatomic,copy) NSArray *answers;
@property   (nonatomic,copy) NSArray *choices;

@property (weak) IBOutlet UILabel *questionLabel;
@property (weak) IBOutlet UILabel *answerLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.a
    
    self.title = @"Quiz a la BNR";
    
    self.questions = @[@"From what is cognac made?",
                       @"What is 7+7",
                       @"What is capital of Vermont?"];
    
    self.answers = @[@"Grapes",
                     @"14",
                     @"Montpelier"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showQuestion:(id)sender
{
    // Step to the next question
    self.currentQuestionIndex++;  // 0, 1, 2 ...
    
    // Am I past the last question?
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;  //return to first question
    }
    
    // Get the string at that index in the questions array
    
    NSString *question = self.questions[self.currentQuestionIndex];
    
    // Display the string in the question label
    self.questionLabel.text = question;
    
    // Reset the answer label
    self.answerLabel.text = @"?????";
    
}

- (IBAction)showAnswer:(id)sender
{
    // What is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    // Display it in the answer label
    self.answerLabel.text = answer;
}


@end
