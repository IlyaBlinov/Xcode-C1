//
//  IBViewController.m
//  C1
//
//  Created by ilyablinov on 02.09.16.
//  Copyright (c) 2016 IB. All rights reserved.
//

#import "IBViewController.h"
#import <ActionSheetStringPicker.h>
@interface IBViewController ()

@property (strong, nonatomic) ActionSheetStringPicker *ap;


@end

@implementation IBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    UIBarButtonItem *infoItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(actionEdit:)];
    
    self.navigationItem.rightBarButtonItem = infoItem;
    
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) sucsessAction:(id) sender{
    
}


- (void) actionCancell:(id) sender{
    
}

- (void) actionEdit: (id) sender{
    
    ActionSheetStringPicker *ap = [ActionSheetStringPicker showPickerWithTitle:@"title" rows:@[@"1", @"2", @"3 "] initialSelection:0 target:self successAction:@selector(sucsessAction:) cancelAction:@selector(actionCancell:)  origin: self.navigationItem.rightBarButtonItem];
    
    self.ap = ap;
  
    
    
}

@end
