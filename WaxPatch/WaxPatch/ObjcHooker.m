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
- (void)addTargetClass:(Class)tarClass targetMethod:(SEL)tarSel originClass:(Class)orgClass originMethod:(SEL)orgSel{
    IMP originImp  = class_getMethodImplementation(orgClass, orgSel);
    Method originMethod = class_getInstanceMethod(orgClass, orgSel);
    const char  *originParam = method_getTypeEncoding(originMethod);
    class_addMethod(tarClass, tarSel, originImp, originParam);
}

- (void)exchangeMethodTarClass:(Class)tarClass targetSel:(SEL)tarSel  originClass:(Class)orgClass originSel:(SEL)orgSel{
    Method originMethod  = class_getInstanceMethod(orgClass, orgSel);
    Method targetMethod  = class_getInstanceMethod(tarClass,  tarSel);
    method_exchangeImplementations(originMethod,targetMethod);
}


@end
