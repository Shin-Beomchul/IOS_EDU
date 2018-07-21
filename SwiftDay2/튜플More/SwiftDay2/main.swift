//
//  main.swift
//  SwiftDay2
//
//  Created by chmac on 2018. 7. 20..
//  Copyright © 2018년 chmac. All rights reserved.
//

import Foundation

//// 튜플을 좀 더 보자

var (a,b) = (10,20)
var t = (10,20)
var t1 = (key: "aa" , value : 10)

var (key,value) = (key: "kv" , value : 110)


//튜플에 접근 할떄는 . array : t[]
print(t.0)
print(t.1)
print(t1.key)
print(t1.value)
print(key,value)
//딕셔너리 : 키 밸류 튜플의 집합?

var d = ["aa":10,"bb":20]


 d["aa"] = 100 //수정
 d["cc"] = 30 // cc는 없음, 있으면 수정, 없으면 추가.
 d.removeValue(forKey: "bb") // 삭제
print(d)
print(type(of : d))


print("d.keys :: " , d.keys) // 딕셔너리의 키 어레이


for k in d.keys{
    
    print(k)
}

for v in d.values{
    print(v)
}




for (dict) in d{
    print(dict.key) //튜플
    print(dict.value)
}


for (k,v) in d{
    print(k) //튜플
    print(v)
}
//
//튜플 : 키가업음
//딕셔너리 : 튜플에 키를 추가.


var tstd = ("신범철",30)
var std1 = ["name" :  "홍길동" , "age" : 30] as [ String : Any] //스트링 이거나 아무타입이나 와도 된다.


var arr:[Int] = [Int]()// 공백 배열
//var arr = [Int]()// 공백 배열
arr.append(10)
arr.append(20)


var dictEmpt: [String:Any] = [String:Any]() // 공백 딕셔너리 키는 스트링 값은 타입 상관없음
//var dictEmpt = [String:Any]() // 

dictEmpt["name"] = "신범철"
dictEmpt["age"] = 20
print(dictEmpt)


var myData = [[String:Any]]()
myData.append(["name" : "신범철" , "age" : 20])
myData.append(["name" : "임꺽정" , "age" : 30])

for dt in myData{
    print(dt["name"]!, dt["age"]!)
}


