//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Kes on 2/25/15.
//  Copyright (c) 2015 DK Media. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView ()

@property (strong, nonatomic) UIColor *circleColor;

@end

@implementation BNRHypnosisView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    // All BNRHypnosisViews start with a clear background color
    if (self){
        self.backgroundColor = [UIColor whiteColor];
    self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}



- (void) drawRect:(CGRect)rect

{
    CGRect bounds = self.bounds;
    
    //to figure out the center of the bounds triangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width /2.0;
    center.y = bounds.origin.y + bounds.size.height /2.0;
    
    // The largest circle will circumscribe the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath*path = [[UIBezierPath alloc] init];
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center
                        radius:currentRadius // Note this is currentRadius!
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    
    //Configure line width to 10 points
    path.lineWidth = 7.5;
        
        
    }
    
    //Configure the drawing color to gray
    [self.circleColor setStroke];
    
    //Draw the line!
    [path stroke];
   
    //Bronze Challenge
    UIImage *logoImage = [UIImage imageNamed:@"NativeLogo.png"];
    
    CGRect logoContainer = CGRectMake(center.x - (logoImage.size.width/4),
                                      center.y - (logoImage.size.height/4),
                                      logoImage.size.width/2,
                                      logoImage.size.height/2);
    
    [logoImage drawInRect:logoContainer];
    

}

// When a finger touches the screen
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@ was touched", self);
    
    // Get 3 random numbers between 0 and 1
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    self.circleColor = randomColor;
}

- (void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

@end

