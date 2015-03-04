//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Kes on 2/25/15.
//  Copyright (c) 2015 DK Media. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    // All BNRHypnosisViews start with a clear background color
    self.backgroundColor = [UIColor whiteColor];
    
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
    path.lineWidth = 5;
        
        
    }
    
    //Configure the drawing color to gray
    [[UIColor lightGrayColor] setStroke];
    
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

@end

