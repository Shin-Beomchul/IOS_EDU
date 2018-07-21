//
//  main.swift
//  SwiftFuncTest
//
//  Created by chmac on 2018. 7. 20..
//  Copyright © 2018년 chmac. All rights reserved.
//

import Foundation





//
func fn(){
    print("fn Call")
}

func fn(x:Int){
    print("오버로딩 : 아규먼트 타입이나 개수가 다를 경우 ::" ,x)
}

func hap(a:Int ,b:Int) -> Int{
    
    return a+b
}




//반지름 인자로 받아 원의면적 반환하는 함수를 만드세요
func getRadius(_ harp:Double) ->Double{
    return harp * harp * 3.14
}



func my(x:Int=10 , y:Int=20){
    print(x+y)
}

func avg(x:Int...) // 가변인자
{
    var sum = 0
    //print(x) //array
    for intv in x{
        
        sum+=intv
        
        
    }
    
    print("평균 :: ",sum/x.count)
    
}


func arrFn (x:[Int]){
    print(x)
}


func tfn(x:Int, y:Int) ->(Int,Int){
    
    return (x,y)
}
//
//
func  shape (r:Double,w:Double,h:Double) ->(Double , Double){// 튜플은 반환에 많이 사용됨.
    
    
    var one = 0.0
    var sagak = 0.0
    
    one = r + w
    sagak = w + h
    
    
    return (one,sagak)
    
    
}
//
//func genfun<T> (x:T,y:T){ // 값에의해 형태 결정
//    print(x,y)
//}
//
//func genfun2<T,R> (x:T,y:R){
//    print(x,y)
//}

//func superSum<T:Any>(x:T,y:T) ->T{// 정수, 실수의 합 모두다됨.
//    return (x + y) as T
//}


//fn()
//fn(x:23)
//print( hap(a:1,b:2) )
//print( getRadius( 3.0) )
//
//my()
//my(x:100)
//my(y:200)
//my(x:100,y:200)
//
//avg(x : 10,10,10,10)
//arrFn(x:[10,20,30,40])
//
// var (a,b) = tfn(x:100,y:200)
//
//var t = shape(r:10,w:20,h:30)
//
//print(t.0)
//print(t.1)
//
//genfun(x: 10, y: 20)
//genfun2(x: 10, y: "String")
//
//
//var (one,  sagak) = shape(r:10,w:20,h:30)

//print(one, sagak)
//shape  반지금 폭 높이 (원의면적 사각형의 면적)



//void fn1()
//{
//    int a;
//    int b;
//    
//}
//
//void fn2(){ / 1000할당
//    int c;
//    nt d;
//    fn1();
//}
//
//Main
//
//int e
//int d
//fn2() // 바인딩 1000
//retun 0;
//
//ex파일을 실행하면 2개의 세그먼트를 핳당 받음
//1코드,
//텍스트 스트링
//
//2데이터
//스테틱 힙 스택
//
//
//실행?
//컴파일 타임
//: 코드를 코드세금ㄴ트 컴파이뢴 텍스트 영역에 카피
//함수 메모리 할당 - fun1 -> 메모리 시작주소 결정(바이트 단위) ex)1000번 메모리 영역
//함수 바인딩 -함수 호출 방향을 해당 어드래스 부분으로 대치 시키는것
//스테틱 - 전역 변수나 스테틱 변수를 메모리에 할당함. 데이터 영역의 스태틱 영역에
//런타임 - 메인 함수 운영체제게 ㅎ콜 함.
//
//지역변수 : 스택에 쭉쭉쭉 차례로 할당 함수 호출 할때마다 함수의 주소를 호출하고 [복귀 번지]수도 정하고 콜함.
//함수가 끝나며너 팝 되면서 날라감. 날리다가 복귀번지를 만나면 스태게서 꺼내서 이동.
//
//프로그램 종료 되면 2개 세그먼트 날아감.
//
//메모리  CPU
//CPU와 메모리는 버스통신을 함.


//클래스 힙 할당?
//class Test{
//    int a;
//    int b;
//}
//클래스 내부의 변수는 힙에 할당되고, 메모리 주소는 포인터가 갖는다(스택에).


//클로져?!
func fn(){
    print("fn Call2")
}

func nf1(){
    print("fn1 Call")
}

var fn1 = fn //fn1 쉘로우 Shallow 카피 (주소만 카피) 코드의 주소라고 생각하면됨.
fn()
fn1()
print(type(of:fn1)) //함수는 빈 튜플을 반환한 리턴값이 없을 경우
 //컴파일 되면 위 코드는 텍스트 영역에 할당.




var menu = [1:fn, 2:fn1]
print("함수 딕셔너리 ",menu[1]!)//fn1  의 함수 호출

menu[1]!()





// 클로져
//func hap(a:Int,b:Int) ->Int{
//    return a+b; // 연산을 정의함.
//}
//
//func testFn(x:Int , f:(Int,Int) -> Int ){ // f: 함수 호출 함수의 주소를 받음 == 함수를 받음
//    //f ==hap 정의된 연산을 수행.
//    print(f(10,20) )
//}
//
//
////함수를 넘김
//testFn(x: 1, f: hap)
//
//// 함수를 호출 부에서 구현함.
//// 왜 하느냐?
//testFn(x:1,
//       f:{ (x1,x2) -> Int in
//        print("Closer(Lambda Call)")
//        return x1+x2})
//
///*
// { (param) -> [returnType] in [구문]
// 
// }
// 
// */
//
//
//// 함수 타입을 하나만 받을때 적요 할 수있는 클로져 평션 문법
//func cFn(f:(Int,Int) ->Int){
//    print(f(10,20))
//}
////cFn(f:{ (a,b) -> Int in return a*b})
////simple 함수가 1개 일 경우만 가능함
////cFn{a,b in return a*b}
//
//cFn{$0 * $1}// 리턴만 기술함 약속된 규약 아규먼트 없어도 됨 순서 없이 $0, $1 번째 아규먼트 1, 2에 대한 연산 결과를 반환해라.





var arr = ["tom","kim","lee","park","new"]

print(arr)

var sdata = arr.sorted() // 디폴트 알파벳 정렬
print(sdata)



//mySortFunction
func sFn(s1:String,s2:String)-> Bool{
    return s1 > s2 //내림차순
}

func supFn(s1:String,s2:String)-> Bool{
    return s1 < s2 //오름차순
}
var msData = arr.sorted(by: sFn)
print(msData)

//클로져 평션 쓰는 이유?
 // 어레이으 딕셔너리 들어가 있거나,
 //함수를 만들 필요가 없음. 정렬을 위해 함수 하나가 필요함. 계속 만들면 메모리 낭비 [오픈클로져]라는 함수 개발 설계기법이 있음.(임시 함수) 사용 후 메모리 제거
  // 람다 사용이유 : 메모리 효율, 공통적인건 직접구현하지 않아는 것이 더 효율적일 수 있음.


//축약
//var clserData = arr.sorted(by: {(f,s) -> Bool in return f<s})
//var clserData = arr.sorted(by: {s1,s2 in return s1>s2})
//var clserData = arr.sorted(by: {$0>$1})
var clserData = arr.sorted{$0>$1}//by 안써도됨
print(clserData)


//map(람다표현식)
var mdata = arr.map { (s1)  in
   return  s1+s1
}
print(mdata)



var mdata2 = arr.map{ $0+"1" }
print(mdata2)



var grade = [10,20,30,40,50]
print(grade.map{$0+10})


//연봉 계산기
var gradeeval = [1000,2000,3000,4000]


//gradeeval.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>) 1아규먼트 , 1리턴 타입 T
var resulsStd = gradeeval.map { (eval) ->  Double in
    return Double(eval) - Double(eval) * 0.033
}

print(resulsStd)


var simpleExp = gradeeval.map{Double($0) - Double($0) * 0.033}
print(simpleExp)


//reduce (누적연산)
print(grade.reduce(0, {(a,b) in return a+b } ))
//a는 처음(앞의 0 )이 (0 b는 10) 
//, ( a= 10 , b = 20 )
//. ( a= 30 , b = 40 )
//. ( a= 70 , b = 50 )? 다시









