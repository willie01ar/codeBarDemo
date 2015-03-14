//
//  ViewController.m
//  barCodeDemo
//
//  Created by Willie on 14/03/15.
//  Copyright (c) 2015 Williams Martinez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *codeNumber;
@property (weak, nonatomic) IBOutlet UILabel *barCode;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.barCode.font = [UIFont fontWithName:@"3Of9Barcode" size:60];
    
    // Print on console all registered fonts
    /*
    for(NSString *fontfamilyname in [UIFont familyNames])
    {
        NSLog(@"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        NSLog(@"Family:'%@'",fontfamilyname);
        for(NSString *fontName in [UIFont fontNamesForFamilyName:fontfamilyname])
        {
            NSLog(@"\tfont:'%@'",fontName);
        }
    }
     */
}


- (IBAction)showBarCode:(UIButton *)sender {
    if (self.codeNumber.text.length > 0) {
        self.barCode.text = self.codeNumber.text;
    }
}


@end
