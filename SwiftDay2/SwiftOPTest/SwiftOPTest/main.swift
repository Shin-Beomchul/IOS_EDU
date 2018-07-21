//
//  main.swift
//  SwiftOPTest
//
//  Created by chmac on 2018. 7. 19..
//  Copyright © 2018년 chmac. All rights reserved.
//

import Foundation



//print("Hello, World!")
//var a = 10
//var b = 3.141592
//var s = "abc"
//var s1 = ""
////포멧 문자열 구성
//print("a = \(a) b = \(b) s = \(s)")
//
//s1 = "\(a)"
//print(s1)
//
//
//
////포멧 구성
// print("스트링 포멧1 :" + String(format : "a=%d",a))
//
//print("스트링 포멧2  :" + String(format : "a=%d b=%f s=%@", a,b,s ))
//
//print("스트링 포멧3  :" + String(format : "a=%10d b=%10.2f s=%@", a,b,s ))
//                                                // 소수점2째 자리
//
//var c = Int(100)
//var s2 = String("abc")!
//var e = true
//
//
//print(c)
//print(s2)
//print(e)
//
//print(type(of : e))
//



//var my = [10,20,30,40,50]
//
//print(my)
//print(type(of : my))//Array<Int>






 //연산자
var a = 0.0
var b = 0


  a = 10 +  2
  a = 10 - 2
  a = 10 * 2
  a = 10 / 3
  print("a = ", a)


   b = 11 % 2 // 1 나머지
   b = b+3 // -= , *= , /= %= 다됨
   b = b + 1
   b += 1 //b++ Swift 4 사용 불가
   b = 3*2-5%2+2 // 6 -1 + 4 좌 -> 우 우선 순위를 가짐.
print("b = ", b)


//문제 반지름이 인 원의 면적을 구하시오
 var radius = 0.0
  radius = 3*3*3.14


var boo1:Bool
//var boo2 = false
boo1 = 10 > 0
print(boo1)


//var boo1 = true && true //

//var boo1 = 10>0 && 10==10 // 우선순위 산술 - 관계 - 논리
//
//
//
////@@@ 삼항연산자
//
//var samhang = 0
//samhang = 10>0 ? 100 : 200
//               // true   false
//
//
//
//
//절대값 구해라
//var n1 = -20
//var n2 = -10
//
//n1 = n1<0 ? -1*n1 :n1
//n2 = n2<0 ? -n2 :n2
//print(n1+n2)



//
//// ? 값이 없는것을 허용함.
 var s1:String! //널을 허용함
  s1 = "abc"
  print(s1) //var s1:String? s1 = "abc" wrap 발생 Optional("abc") 느낌표를 주면 옵셔널 안붙음 언랩




//
//
//var nn:Int?
//var s11:String? = nil
//var s2 = "hello"
//
//s1 = "abs"
//
//print(s1 ?? s2) //s1이 널이면 s2


//@@@형변환(Int..String.. 모두 옵셔널을 반환함. )
 Int(..) 는 옵셔널을 반환함
var nh:Int
var s1h:String? = nil
var s2h = "hello2"
var s3 = "100"

nh = Int(s3)!
// nh는 허용안하지만 Int는 옵셔널 널 허용을 반환함. 따라서 느낌표를 붙혀 @@@언랩핑함.


print(nh)




//키보드 입력
//var optVar:String?
// optVar = readLine()
//print(optVar)



//반지름을 입력 받아 원의 면적을 구하시오

print("반지름 입력 받아 원을 면적을 구하세요")
var optVar:String? // 옵셔널 반환
var r=0.0
var circle = 0.0

optVar = readLine()
r = Double(optVar!)!
circle = r*r*3.14
print(circle)

print(10,20,30 ,separator: "-")


// 센치를 받아서 인치로 변환
var readCM:Double
var replaceInch = 0.0

print("센치 입력 ",terminator:"")
readCM = Double(readLine()!)!

replaceInch = readCM * 0.393701

print(replaceInch)




//제어문 if(), for() ()괄호 생략 가능
// @@@타 언어 중괄호를 1라인일 경우 생략 가능하지만 스위프트는 생략 불가능.



var n = 2
if(n > 0){
    print("Big")
}else if(n == 0){
    print("equal")
}
else
{
    print("small")
}


//점수 입력 받아 

//90~ 100
//80~ 89
//70~ 79
//60~ 69

print("input score")
var score = Int(readLine()!)!

if(score <= 100 && score >= 90 ){
    
    print("A")
}
else if(score >= 80 ){ //89 안해도 됨 : 수나처리로 위에서 걸림
    
    print("B")
}
else if(score >= 70){
    print("C")
}
else if(score >= 60){
  print("D")
}
else{
    print("F")
}




//if let
//var s:String? = "abc"
//
//if let s1 = s{ // s = nil == false s1 SCOP IS 중괄호 까지만 제한됨. if 내에 선언된  @@@자동 unWrap
//    print("Type ?", type(of : s))
//     print("Type 자동 언랩핑?", type(of : s1))
//    print("nill 아님",s1)
//}else{
//    print("nil")
//}



//@@@ switch break 가 없음 타언어는 밑에까지 다찍히지만 스위프트는 케이스에 걸리고 빠져나옴
var n = 1
switch n

{
case  1:
    print("1")
    
case  2:
    print("2")
    
case  3:
    print("3")
default:
    print("default")
}


var s = "ccc"
switch s
    
{
case  "aaa", "ccc":
    print("aa!")
    
case  "bbb":
    print("B")
    
case  "cccc":
    print("C")
default:
    print("default")
}



var n = 89
switch n {
    
case 90...100:
     print("A")
    
    
case 89...90:
    print("B")
    
default:
    print("F")
    
}



//반복문

//
//var arr = [10,20,30,40]
//for n in arr{
//    print(n)
//}
//
//
//
//for n in 1...10{
//    print(n)
//}
//
//10의 약수
//
//
//for n in 1...10 {
//    if(10%n == 0){
//        print("10의 약수 ::" ,n )
//    }
//}
//
//
//
//
//for ns in stride(from: 1, to : 10, by: 2){
//    print(ns)
//}
//
//print(Array(stride(from: 1, to : 10, by: 2))) //@@@stride :: 배열 생성기
//
//
//구구단
//
//for front in stride(from: 2, to : 10, by: 1) {
//    for end in stride(from: 1, to : 10, by: 1) {
//        print(front , "*" , end ,"=" , front*end)
//        print("\(front) * \(end) = \(front*end)")//포멧
//    }
//}
//
//
//
//반복문 - while
//var n =. 1
//while n <= 5{
//    
//    print(n)
//    n+=1
//}




//@@@ 튜플 타입 (함수쪽에서 많이 사용됨. 어레이 아님.)
//let (x,y) = (10,20).
//print("let (x,y) = (10,20) :: " ,x,y) 개별 값으로 들어감.
//
//
//let x = (10,20)
//print(x)
//print(type(of : x))




//배열?

var arr = ["aa","bb","cc"] //Array 객체 약속된 객체는 클래스 명시 하지 않아도 됨 약속 : []
 // == [(0,"aa"),(1,"bb")....


var arrD =  Array(["aa","bb","cc"]) //Array 객체


//java : Test obj = new Test()
//객체.멤버함수() 객체.속성
//Swift : var 객체명 = Test()


print(arr.count)
print(arr[0])

arr.append("appendData") //맨 끝에 추가
arr.insert("ee",at: 1) //중간 추가

//수정
arr[0] = "aaRepace"
print(arr)
//doc 검색팁 swift array api


//배열 요소 인덱스 1 부터 2인덱스 까지
print(arr[1...2])
print(arr[0...2])

//삭제

print("삭제 :: ",arr.remove(at: 1))

arr += ["arrCalcAA,arrCalcBB"]
print(arr)
print(arr.enumerated())// 인덱스와 값에 대한 튜플을 반환해줌.

for(idx,val) in arr.enumerated(){
    print("idx:: ", idx)
    print("val ::",val)
}

//tuble Array  : 2차원
var tupleArr = [(100,20), (70,80),(100,20), (40,60)]

for (ko,en) in tupleArr{

    print(ko,en)
}


//문제 시작
//var scoreSet = Array([0,0])

//var scoreSet = [(Int,Int)]()
//
//
//var inputko:Int
//var inputEn: Int
//
//
//print("국어 :" ,terminator: "")
//inputko = Int(readLine()!)!
//print("영어 :" ,terminator: "")
//inputEn = Int(readLine()!)!
//scoreSet.append((inputko, inputEn))
//
//
//
//for (ko,en) in scoreSet.enumerated() {
//    
//    print("=====국어======영어=====")
//    print("  \(ko)======\(en)    ")
//   
//    
//}



//
//var arr2 = [(Int,Int)]() //2rodml 2개의 공백 인티져를 받는 어레이 공백 튜플을 담는 어레이 객체
//var kor = 0
//var eng = 0
//for n in 1...2{
//    
//    print("국어 :" ,terminator: "")
//    kor = Int(readLine()!)!
//    print("영어 :" ,terminator: "")
//    eng = Int(readLine()!)!
//    
//    arr2.append((kor, eng))
//
//}
//
//print("==국어==영어==")
//for (k,e) in arr2{
//    print("== `\(k)    \(e) ==")
//   }
//
//
//
//var my :[String] = ["abc"]
//var my1 = Array(["abc"])
//var my2 = [String]()
//
//
//
//






//1.키와 몸무게 비만도

//표준체중 kg = (cm -100) x 0.85

var result = 0.0
var fatable:Double
var cm = 0.0
var kg = 0.0

print("키와 몸무게 입력하세요")
print("키 :" ,terminator: "")
cm = Double(readLine()!)!


print("몸무게 :" ,terminator: "")
kg = Double(readLine()!)!



result = Double((cm-100) * 0.85)

fatable = Double(kg/result * 100)
print("결과 ::", fatable)
print(String(format : "결과 Formet %0.1f ::", fatable))

switch fatable {
    
case  120...200 :
    print("뚱땡이")
    
case  110...120 :
    print("초과")
    
    
case  90...110 :
    print("과체중")
    
    
case  0...90 :
    print("미만")
    
default :
    print("뭐야 넌")
}







// 단위 환산
//cm to inch
//m to mile
//HWAC TO do

//
var cm = 0.0
print("cm을 인치로 바꿔 줄게요 ! cm을 입력해 주떼요")
cm = Double(readLine()!)!
print(cm * 0.393701, "인치에오")

var meeter = 0.0
print(" 미터를 마일로 바꿔 줄게요 ! 미터를 입력해 주떼요")
meeter = Double(readLine()!)!
print(meeter * 0.00062137, "마일")


var whaC = 0.0
print(" 화씨를 섭씨로 바꿔 줄게요 ! 화씨를 입력해 주떼요")
meeter = Double(readLine()!)!
print((whaC - 32 ) * (5/9))


//년도 입력받아 윤년 여부를 출력하싱
//윤년의 조건
 //4로 나눠 떨어지지만 100으로 나눠 떨어지지 않아야 한다. 또는
  // 400 으로 나눠 떨어지면 윤년입니당

//나이를 출력하시오

 

//
//var inputYear = 0
//
//print("생년월일을 입력해 주세용")
// inputYear = Int(readLine()!)!
//
//if(inputYear%4 == 0 && !(inputYear%100 == 0) ){
//    print("윤년입니다")
//    
//}else if(inputYear%400 == 0){
//    print("윤년 입니다")
//}else{
//    print("윤년이 아니에요")
//}
//
//
//let nowYear = 2018
//print("당신의 나이는 " , nowYear - inputYear   ,"살 이네용")
//

//12지신 어케하는겨 ㅡㅡ































