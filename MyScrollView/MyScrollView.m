//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Adam Goldberg on 2015-10-12.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView





- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super init];
    if (self) {
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveScreen:)];
        [self addGestureRecognizer:panGesture];
    }
    return self;
}


-(void)moveScreen:(UIPanGestureRecognizer*)panMove
{
    CGPoint screenPoint = [panMove translationInView:self];
    [self.delegate myScrollViewDidScroll:self point:screenPoint];
}









@end
