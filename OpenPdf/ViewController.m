//
//  ViewController.m
//  OpenPdf
//
//  Created by PASHA on 07/10/18.
//  Copyright © 2018 Pasha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  NSLog(@"okkk");
  NSLog(@"hello open pdf file here ");
  NSString * path = [[NSBundle mainBundle]pathForResource:@"Swift" ofType:@"pdf"];
  NSURLRequest * req= [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:path]];
  self.WK.scalesPageToFit = YES;
  self.WK.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
  self.WK.delegate = self;
  [self.WK loadRequest:req];
 
  // Do any additional setup after loading the view, typically from a nib.
}


@end
