//
//  ViewController.m
//  MyScrollView
//
//  Created by Adam Goldberg on 2015-10-12.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController () <MyScrollViewDelegate>

@property (nonatomic, strong) MyScrollView *myView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.myView = [[MyScrollView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds) + 100)];
   
    
    self.myView.delegate = self;
    
    
    
    [self.view addSubview:self.myView];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    
    [self.myView addSubview:redView];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    
    [self.myView addSubview:greenView];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    
    [self.myView addSubview:blueView];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    
    [self.myView addSubview:yellowView];
    
    
 
    
   
    
    
}

-(void)myScrollViewDidScroll:(MyScrollView *)scrollview point:(CGPoint)point {
    NSLog(@"%@", NSStringFromCGPoint(point));
    self.myView.frame = CGRectMake(0, point.y, self.view.bounds.size.width, self.view.bounds.size.height);
}



- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    CGRect viewBounds = self.view.bounds;
    viewBounds.origin.y = viewBounds.origin.y + 100;
    self.view.bounds = viewBounds;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
