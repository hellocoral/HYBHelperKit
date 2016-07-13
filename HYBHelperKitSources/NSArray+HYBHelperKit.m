//
//  NSArray+HYBHelperKit.m
//  HYBHelperKit
//
//  Created by huangyibiao on 16/6/29.
//  Copyright © 2016年 huangyibiao. All rights reserved.
//

#import "NSArray+HYBHelperKit.h"

@implementation NSArray (HYBHelperKit)

- (id)hyb_objectAtIndex:(NSUInteger)index {
    if (index < self.count) {
        return [self objectAtIndex:index];
    }
  
    return nil;
}

- (BOOL)hyb_isContainsString:(NSString *)string {
    if(!string){
        return NO;
    }
    
    for (id element in self) {
        if ([element isKindOfClass:[NSString class]] && [element isEqualToString:string]) {
            return YES;
        }
    }
  
    return NO;
}

- (NSArray *)hyb_reverseArray {
    /*
  NSMutableArray *arrayTemp = [NSMutableArray arrayWithCapacity:[self count]];
  NSEnumerator *enumerator = [self reverseObjectEnumerator];
  
  for (id element in enumerator) {
    [arrayTemp addObject:element];
  }
  
  return arrayTemp;*/
    
    return self.reverseObjectEnumerator.allObjects;
}

@end
