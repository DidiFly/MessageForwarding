//
//  NSObject+FF.m
//  001-探索消息转发的起因
//
//  Created by zhou on 2021/7/4.
//

#import "NSObject+FF.h"
#import <objc/message.h>

@implementation NSObject (FF)

//为实例对象创建一个IMP
- (void)prettyGirls {
    NSLog(@"%s",__func__);
}

//为元类对象创建创建一个IMP
+ (void)enjoyTime {
    NSLog(@"%@ - %s",self,__func__);
}

#pragma clang diagnostic push
// 让编译器忽略错误
#pragma clang diagnostic ignored "-Wundeclared-selector"

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    
    NSLog(@"手动介入resolveInstanceMethod :%@-%@",self,NSStringFromSelector(sel));
    
    if (sel == @selector(likeGirls)) {
        
        IMP prettyGirlsImp = class_getMethodImplementation(self, @selector(prettyGirls));
        Method method = class_getInstanceMethod(self, @selector(prettyGirls));
        const char * type = method_getTypeEncoding(method);
        return  class_addMethod(self, sel, prettyGirlsImp, type);
    } else if (sel == @selector(enjoyLife)) {
        
        IMP enjoyTimeImp = class_getMethodImplementation(objc_getMetaClass("FFPerson"), @selector(enjoyTime));
        Method method = class_getInstanceMethod(objc_getMetaClass("FFPerson"), @selector(enjoyTime));
        const char * type = method_getTypeEncoding(method);
        return  class_addMethod(objc_getMetaClass("FFPerson"), sel, enjoyTimeImp, type);
    }

    return NO;
}
#pragma clang diagnostic pop

@end
