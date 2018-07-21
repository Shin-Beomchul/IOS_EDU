//
//  main.swift
//  SwiftDay1
//
//  Created by chmac on 2018. 7. 19..
//  Copyright © 2018년 chmac. All rights reserved.
//

import Foundation

print("Hello, World!")
var a = 10
var b = 3.141592
var s = "abc"
var s1 = ""
//포멧 문자열 구성
print("a = \(a) b = \(b) s = \(s)")

s1 = "\(a)"
print(s1)



//포멧 구성
 print("스트링 포멧1 :" + String(format : "a=%d",a))

print("스트링 포멧2  :" + String(format : "a=%d b=%f s=%@", a,b,s ))

print("스트링 포멧3  :" + String(format : "a=%10d b=%10.2f s=%@", a,b,s ))
                                                // 소수점2째 자리

var c = Int(100)
var s2 = String("abc")!
var e = true


print(c)
print(s2)
print(e)

print(type(of : e))




var my = [10,20,30,40,50]

print(my)
print(type(of : my))//Array<Int>









