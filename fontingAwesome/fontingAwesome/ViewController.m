//
//  ViewController.m
//  fontingAwesome
//
//  Created by Cenker Demir on 6/29/16.
//  Copyright © 2016 Cenker Demir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *fontAwesomeButtonLabel;
@property (nonatomic) FAKFontAwesome *font;
@property (nonatomic) CWStatusBarNotification *statusBarNotification;
@property (nonatomic) BOOL awesomeButtonTapped;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.font = [FAKFontAwesome carIconWithSize:60];
    [self.font addAttribute:NSForegroundColorAttributeName value:[UIColor magentaColor]];
    [self.fontAwesomeButtonLabel setAttributedTitle:[self.font attributedString] forState:UIControlStateNormal];
    self.statusBarNotification = [[CWStatusBarNotification alloc] init];
    self.awesomeButtonTapped = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)awesomeButtonTapped:(id)sender {
    if (self.awesomeButtonTapped == NO) {
        self.font = [FAKFontAwesome bugIconWithSize:70];
        self.awesomeButtonTapped = YES;
    }
    else {
        self.font = [FAKFontAwesome carIconWithSize:60];
        self.awesomeButtonTapped = NO;
    }
        [self.font addAttribute:NSForegroundColorAttributeName value:[UIColor magentaColor]];
        [self.fontAwesomeButtonLabel setAttributedTitle:[self.font attributedString] forState:UIControlStateNormal];

    [self.statusBarNotification dismissNotification];
}

- (IBAction)awesomeButtonTappedDown:(id)sender {
    [self.statusBarNotification displayNotificationWithMessage:@"You're holding the button!" completion:nil];
}


@end
