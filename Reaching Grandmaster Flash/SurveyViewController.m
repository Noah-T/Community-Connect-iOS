//
//  ViewController.m
//  Reaching Grandmaster Flash
//
//  Created by Noah Teshu on 11/1/14.
//  Copyright (c) 2014 Noah Teshu. All rights reserved.
//

#import "SurveyViewController.h"

@interface SurveyViewController ()
@property (weak, nonatomic) IBOutlet UIButton *livingGrandparents1;
@property (weak, nonatomic) IBOutlet UIButton *livingGrandparents2;
@property (weak, nonatomic) IBOutlet UIButton *livingGrandparents3;

@property (weak, nonatomic) NSArray *buttonArray;
@property (strong, nonatomic) NSArray *livingGrandparentsArray;


- (IBAction)radioButtonClicked:(id)sender;

@end

@implementation SurveyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.livingGrandparents1 setTitle:@"1-2" forState:UIControlStateNormal];
    [self.livingGrandparents2 setTitle:@"3-4" forState:UIControlStateNormal];
    [self.livingGrandparents3 setTitle:@"More than 4" forState:UIControlStateNormal];
    self.livingGrandparentsArray = @[self.livingGrandparents1, self.livingGrandparents2, self.livingGrandparents3];
    for (UIButton *button in self.livingGrandparentsArray) {
        [button setImage:[UIImage imageNamed:@"checked"] forState:UIControlStateSelected];
        [button setImage:[UIImage imageNamed:@"unchecked"] forState:UIControlStateNormal];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)radioButtonClicked:(UIButton*)sender {
    if ([sender isSelected]) {
        return;
    } else {
        for (UIButton *button in self.livingGrandparentsArray ) {
            [button setSelected:NO];
        }
        [sender setSelected:YES];
        
        
    }
}


@end
