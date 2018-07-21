//
//  main.m
//  ObjClassTest
//
//  Created by chmac on 2018. 7. 20..
//  Copyright © 2018년 chmac. All rights reserved.
//





#import <Foundation/Foundation.h>


// 정의
@interface Test  : NSObject{
    int a;
    int b;
}
    //함수의 원형을 정의함
    -(void) setData:(int) x andTest:(int) y; // 두번째 인자부터는 라벨을 줘야함
    -(void) show;

@end



// 구현
//
//- : 인스턴스
//+ : 스테틱 메소드
@implementation Test
    -(void)setData:(int)x andTest:(int)y;
    {
        a = x;
        b = y;
    }

    -(void) show;{
        printf("a=%d, b=%d" ,a, b);
    }

@end




//프로토콜을 해보자

// 프로토콜 선언
@protocol Pet
    @required //필수 구현
    -(void) Eat;
    @optional
    -(void) Sleep;

@end


// 프로토콜 사용 선언
@interface Dog : NSObject<Pet>
    -(void)Eat;

    @end


// 개 구현.
@implementation Dog
-(void) Eat;
    {
        printf("뼈를 먹어요");
    }
    -(void) Sleep;{
        printf("잠을 자요");
    }

@end


int main(int argc, const char * argv[]) {
    
        // insert code here...
    
        Test* obj = [[Test alloc] init];// 4바이트
//      obj = [obj init]; // 메모리 할당 치기화
    [obj setData:10 andTest:20];
    [obj show];
    
    
    
    
    
    
    
    Dog* dog = [[Dog alloc] init];
    [dog Eat];
    [dog Sleep];
    
    
    
    
    return 0;
}
