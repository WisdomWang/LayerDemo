//
//  TiledView.m
//  CoreAnimationDemo
//
//  Created by Cary on 2018/11/6.
//  Copyright © 2018 Cary. All rights reserved.
//

#import "TiledView.h"

@implementation TiledView

+(Class)layerClass {
    
    return [CATiledLayer class];
}

- (id)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [(CATiledLayer *)self.layer setTileSize:CGSizeMake(self.contentScaleFactor*100, self.contentScaleFactor*100)];
    }
    return self;
}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    
    CGRect rect = CGContextGetClipBoundingBox(ctx);
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextAddRect(ctx, CGRectMake(rect.origin.x+2, rect.origin.y+2, rect.size.width-4, rect.size.height-4));
    CGContextFillPath(ctx);
    
}


@end
