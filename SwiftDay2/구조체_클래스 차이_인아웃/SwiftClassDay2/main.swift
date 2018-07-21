//
//  main.swift
//  SwiftClassDay2
//
//  Created by chmac on 2018. 7. 20..
//  Copyright © 2018년 chmac. All rights reserved.
//

import Foundation

////구조체
//struct STest {
//    var a = 0
//    var b = 0
//}
//
//// 클래스 멤머변수는 힙에 저장함.
//class CTest {
//    var a = 0
//    var b = 0
//    
//    func setData(a:Int , b:Int){
//        self.a = a // self .a : 힙 , a : 스택영역
//        self.b = b
//    }
//    
//    func show(){
//        print(self.a,b)
//    }
//}



/* 클래스의 힙, 스택 할당 바인딩 */
//// 클래스의 모든 멤버변수에 셀프를 넣어버림.
//var obj = CTest() // 힙영역에 초기화 a=0, b =0  / obj가 참조함.
//obj.setData(a: 100, b: 200)
////컴파일러 영역에서 변경된 코드 (obj.setData(self:obj.a:100 ,obj.setData(self:obj.a:200 ))
//obj.show()
//
//
//var obj1 = CTest() //obj는 스택에 주소가 쌓임
//obj1.setData(a: 100, b: 200)//(obj1.setData(self:obj.a:100 ,obj.setData(self:obj1.a:200 ))
//obj1.show()

////결론 : 동일한 클래스에서 여러개의 객체가 발생한 경우
////멤버 변수는 힙에 별도로 잡히고, 멤버 함수는 공유, 각각의 멤버 데이터에 값을 self에 의해 제어됨.
////객체가 생성 됬다> 멤버변수가 힙에 할당 되었다.`






//클래스는 참조타입 : 힙에 쌓임
//  클래스를 제외한 모든 타입은 값 타입임.
//배열 : 구조체 기본 타입은 싹다 값 타입
// 자바는 전부다 참조 타입. 이래서 자바는 포인터의 연속 이라는거임.


//func fn(){
//    
//    var st = STest() // 구조체는 값 타입 이기 때문에 스택에 쌓임 0,0 으로
//    st.a = 10 //각각 스택 영역에 값을 대입
//    st.b = 20
//    print(st.a)
//    print(st.b)
//   
//
//}

// 구조체 메모리(깊은 복사)
//var s1 = STest()
//var s2 = s1 //Deep Copy 함수 :주소복사 , 배열,디셔너리 = 값타입 // !!딥카피 발생 스택에 메모리 영역이 똑같이 할당됨.
//
//s2.a = 100
//
//print(s1.a, s1.b)
//print(s2.a, s2.b)




// 클래스 메모리(얇은 복사)
//var s1 = CTest()
//var s2 = s1 //Shallow Copy 함수 :주소복사 , 배열,디셔너리 = 값타입 // !!얇은 복사 발생 주소 값만 복사. 힙에 값저장 하고 스택에 주소만 가지고 있음
//
//s2.a = 100
//
//print(s1.a, s1.b)
//print(s2.a, s2.b)
//





// 배열은 값타입 확인!
//var arr = [10,20]
//var arr1 = arr //deep Copy
//
//arr[0] = 100
//print(arr)
//print(arr1)





/**/

func mySwap(a:inout Int, b:inout Int){ //참조 변수로 만들어줌 인아웃 주면 렛, 수정이 안됨. 인아웃주면 가능함
    var temp = a
    a = b
    b = temp
    
}

//func mySwapFree(a: Int){  //안됨
//    a =10;
//}
var x = 10
var y = 20


mySwap(a: &x, b: &y) //주소를 넘겨줌
print(x,y)



