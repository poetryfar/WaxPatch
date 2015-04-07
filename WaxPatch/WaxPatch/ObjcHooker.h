//
//  ObjcHooker.h
//  WaxPatch
//
//  Created by 彭碧 on 15/4/6.
//  Copyright (c) 2015年 dianping.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface ObjcHooker : NSObject
{}
- (void)installHooker;
- (void)addTargetClass:(Class)tarClass targetMethod:(SEL)tarSel originClass:(Class)orgClass originMethod:(SEL)orignMethod;
@end
