//
//  main.m
//  001-探索消息转发的起因
//
//  Created by zhou on 2021/7/4.
//

#import <Foundation/Foundation.h>
#import "FFPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        FFPerson *person = [FFPerson alloc];
        //调用未实现的实例方法
        [person likeGirls];
        //调用未实现的类方法
        [FFPerson enjoyLife];
        
    }
    return 0;
}
