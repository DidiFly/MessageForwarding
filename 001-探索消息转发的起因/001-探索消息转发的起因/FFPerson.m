//
//  FFPerson.m
//  001-探索消息转发的起因
//
//  Created by zhou on 2021/7/4.
//

#import "FFPerson.h"
#import <objc/message.h>

@implementation FFPerson

////为实例对象创建一个IMP
//- (void)prettyGirls {
//    NSLog(@"%s",__func__);
//}
//
////为元类对象创建创建一个IMP
//+ (void)enjoyTime {
//    NSLog(@"%@ - %s",self,__func__);
//}
//
//+ (BOOL)resolveInstanceMethod:(SEL)sel {
//    
//    if (sel == @selector(likeGirls)) {
//        
//        IMP prettyGirlsImp = class_getMethodImplementation(self, @selector(prettyGirls));
//        Method method = class_getInstanceMethod(self, @selector(prettyGirls));
//        const char * type = method_getTypeEncoding(method);
//        return  class_addMethod(self, sel, prettyGirlsImp, type);
//    }
//    
//    NSLog(@"手动介入resolveInstanceMethod :%@-%@",self,NSStringFromSelector(sel));
//    
//    return [super resolveInstanceMethod:sel];
//}
//
//
//+ (BOOL)resolveClassMethod:(SEL)sel {
//    
//    if (sel == @selector(enjoyLife)) {
//        
//        IMP enjoyTimeImp = class_getMethodImplementation(objc_getMetaClass("FFPerson"), @selector(enjoyTime));
//        Method method = class_getInstanceMethod(objc_getMetaClass("FFPerson"), @selector(enjoyTime));
//        const char * type = method_getTypeEncoding(method);
//        return  class_addMethod(objc_getMetaClass("FFPerson"), sel, enjoyTimeImp, type);
//    }
//    NSLog(@"手动介入resolveInstanceMethod :%@-%@",self,NSStringFromSelector(sel));
//    
//    return [super resolveClassMethod:sel];
//}

@end
