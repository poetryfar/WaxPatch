//
//  ObjcHooker.m
//  WaxPatch
//
//  Created by 彭碧 on 15/4/6.
//  Copyright (c) 2015年 dianping.com. All rights reserved.
//

#import "ObjcHooker.h"
#import <objc/objc.h>
#import <objc/runtime.h>
@implementation ObjcHooker
- (void)installHooker{
}
- (void)addTargetClass:(Class)tarClass targetMethod:(SEL)tarSel originClass:(Class)orgClass originMethod:(SEL)orgMethod{
    IMP originImp  = class_getMethodImplementation(orgClass, orgMethod);
    Method originMethod = class_getInstanceMethod(orgClass, orgMethod);
    const char  *originParam = method_getTypeEncoding(originMethod);
    class_addMethod(tarClass, tarSel, originImp, originParam);
}
@end
