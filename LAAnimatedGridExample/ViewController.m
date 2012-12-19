//
//  ViewController.m
//  LAAnimatedGridExample
//
//  Created by Luis Ascorbe on 18/12/12.
//  Copyright (c) 2012 Luis Ascorbe. All rights reserved.
//
/*
 
 LAAnimatedGrid is available under the MIT license.
 
 Copyright © 2012 Luis Ascorbe.
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 */

#import "ViewController.h"
#import "LAAnimatedGrid.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    // Array of images
    NSMutableArray *arrImages = [NSMutableArray array];
    for (int i=1; i<11; i++)
    {
        [arrImages addObject:[UIImage imageNamed:[NSString stringWithFormat:@"ios%d.jpeg", i]]];
    }
    
    
    // LAAnimatedGrid
    LAAnimatedGrid *laag = [[LAAnimatedGrid alloc] initWithFrame:CGRectMake(10, 10, 300, 500)];
    laag.backgroundColor = [UIColor blackColor];
    [laag setArrImages:arrImages];
    [laag setLaagOrientation:LAAGOrientationVertical];
    
    [self.view addSubview:laag];
    
#if !__has_feature(objc_arc)
    [laag release];
#endif
    
    // LAAnimatedGrid
    /*laag = [[LAAnimatedGrid alloc] initWithFrame:CGRectMake(10, 150, 300, 200)];
    laag.backgroundColor = [UIColor blackColor];
    [laag setArrImages:arrImages];
    
    [self.view addSubview:laag];
    
#if !__has_feature(objc_arc)
    [laag release];
#endif
    
    // LAAnimatedGrid
    laag = [[LAAnimatedGrid alloc] initWithFrame:CGRectMake(10, 300, 300, 200)];
    laag.backgroundColor = [UIColor blackColor];
    [laag setArrImages:arrImages];
    
    [self.view addSubview:laag];
    
#if !__has_feature(objc_arc)
    [laag release];
#endif*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
