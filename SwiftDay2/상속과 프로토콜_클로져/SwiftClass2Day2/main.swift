//
//  main.swift
//  SwiftClass2Day2
//
//  Created by chmac on 2018. 7. 20..
//  Copyright © 2018년 chmac. All rights reserved.
//

import Foundation


//상속과 프로토콜


class Pet
{
    
    func sleep()//애완동물이 어케 자냐 ? 애완동물은 웅크려 잘 수도 있고, 엎드려 잘수도 있는데 어케암 몰라. 그래서! 프로토콜
    {
        print("zzz")
    }
    func Eat(){
        print("????")
    }
}


class Dog : Pet{
    
    // 오버라이딩 - 재정의
    override func Eat() {
        print("강아지는 뼈다귀를 먹어요")
    }
    
    func speak(){
        print("bow bow")
    }
}


var dog = Dog()
dog.speak()
dog.Eat()
dog.sleep()



//
protocol Pet {
    func Sleep()
    func Eat()
}



class Dog : Pet{ // 인터페이스와 같음
    
    func Sleep() {
       print( "댕댕이는 누워자요")
    }
    
    func Eat() {
       print("댕댕이는 뼈를 먹어요")
    }
}




class exec{
    
    
    var isFinish = false
    var type:Int = 0
    var scoreSet = [(String,Int,Int,Int)]()
    
    var name:String = ""
    var math: Int = 0
    var inputko:Int = 0
    var inputEn: Int = 0
    
    
func start(){
    
    while true {
       print("1.입력")
       print("2.출력")
       print("3. 종료")
    
       print("번호를 입력하세요 : ")
       type = Int(readLine()!)!
       switch type{
    
        case 1 : insert()
            break
    
       case 2 : show()
            break
    
       case 3 :
        isFinish = true
            break
    
    default :
        print("똑띠 입력하세용")
    
    }
    
    if(isFinish){
        break
    }
    
    
    }
    }
    
    
    func insert(){
     while true {
            
        print("이름",terminator: "")
        name = readLine()!
        
        print("국어",terminator: "")
        inputko = Int(readLine()!)!
        
        print("영어",terminator: "")
        inputEn = Int(readLine()!)!
        
        print("수학",terminator: "")
        math = Int(readLine()!)!
        
        scoreSet.append((name, inputko, inputEn, math))
        
        print("계속 입력할꺼유? (Y/N)")
        
        if(readLine() == "n"){
            break;
        }
        
    }
        
    }
    
    func show(){
        print("==============================")
        print("이름      국어      영어     수학      총점     평균")
        print("==============================")
        
        
        for(name,ko,en,math) in scoreSet {
            let tot = ko + en + math
            let avg = (ko + en + math ) / 3
            
            print("\(name)      \(ko)      \(en)      \(math)       \(tot)      \(avg)")
            
        }
        
        
        
        
       
        
//        for(_,ko,en,math) in scoreSet {
//            kotot += Double(ko)
//            entot += Double(en)
//            mathtot += Double(math)
//        }
        let kotot  = scoreSet.map{ $0.1}.reduce( 0 , {$0+$1})
        let entot  = scoreSet.map{ $0.2}.reduce( 0 , {$0+$1})
        let mathtot  = scoreSet.map{ $0.3}.reduce( 0 , {$0+$1})
        
       let  kMax  = scoreSet.map{ $0.1}.max()!
        let eMax  = scoreSet.map{ $0.2}.max()!
        let mMax  = scoreSet.map{ $0.3}.max()!
        
        
        print("총점 :: 국어 \(kotot)  영어 \(entot). 수학 \(mathtot)" )
        
//        print("평균 :: 국어 \(kotot/scoreSet.count)  영어 \(entot/Double(scoreSet.count)). 수학 \(mathtot/Double(scoreSet.count))" )
        
        print("최고점수:: ")
        
    }
    
}

//var exInstance = exec()
//exInstance.start()




struct Grade {
    var name = ""
    var kor = 0
    var eng = 0
    var math = 0
}
var grade = Grade(name:"StackInMemory",kor:20,eng:30,math:40) // 스트럭츠는 바로 생성 가능
print(grade)



//클래스는 생성자 필요.
class CGrade {
    var name = ""
    var kor = 0
    var eng = 0
    var math = 0
    
    init(n:String,k:Int, e:Int ,m:Int){
        name = n
        kor = k
        eng = e
        math = m
    }
}




class execClassVer{
    
    
    var isFinish = false
    var type:Int = 0
    var scoreSet = [(String,Int,Int,Int)]()
    var arr = [Grade]()
    
    var name:String = ""
    var math: Int = 0
    var inputko:Int = 0
    var inputEn: Int = 0
    
    
    func start(){
        
        while true {
            print("1.입력")
            print("2.출력")
            print("3. 종료")
            
            print("번호를 입력하세요 : ")
            type = Int(readLine()!)!
            switch type{
                
            case 1 : insert()
                break
                
            case 2 : show()
                break
                
            case 3 :
                isFinish = true
                break
                
            default :
                print("똑띠 입력하세용")
                
            }
            
            if(isFinish){
                break
            }
            
            
        }
    }
    
    
    func insert(){
        while true {
            
            print("이름",terminator: "")
            name = readLine()!
            
            print("국어",terminator: "")
            inputko = Int(readLine()!)!
            
            print("영어",terminator: "")
            inputEn = Int(readLine()!)!
            
            print("수학",terminator: "")
            math = Int(readLine()!)!
            
            arr.append(Grade(name: name,kor:inputko,eng:inputEn,math:math))
            
            print("계속 입력할꺼유? (Y/N)")
            
            if(readLine() == "n"){
                break;
            }
            
        }
        
    }
    
    func show(){
        print("==============================")
        print("이름      국어      영어     수학      총점     평균")
        print("==============================")
        
        
        for(name,ko,en,math) in scoreSet {
            let tot = ko + en + math
            let avg = (ko + en + math ) / 3
            
            print("\(name)      \(ko)      \(en)      \(math)       \(tot)      \(avg)")
            
        }
        
        
        
        
        
        
        //        for(_,ko,en,math) in scoreSet {
        //            kotot += Double(ko)
        //            entot += Double(en)
        //            mathtot += Double(math)
        //        }
        let kotot  = arr.map{ $0.kor}.reduce( 0 , {$0+$1})
        let entot  = arr.map{ $0.eng}.reduce( 0 , {$0+$1})
        let mathtot  = arr.map{ $0.math}.reduce( 0 , {$0+$1})
        
        let  kMax  = arr.map{ $0.kor}.max()!
        let eMax  = arr.map{ $0.eng}.max()!
        let mMax  = arr.map{ $0.math}.max()!
        
        
        print("총점 :: 국어 \(kotot)  영어 \(entot). 수학 \(mathtot)" )
        
        //        print("평균 :: 국어 \(kotot/scoreSet.count)  영어 \(entot/Double(scoreSet.count)). 수학 \(mathtot/Double(scoreSet.count))" )
        
        print("최고점수:: ")
        
    }
    
}

//var exInstance = exec()
//exInstance.start()


//윈도우는 맥이 처음 만듬
//아이폰 큐 : 이벤트 발생 시 할당
// 윈도우 상에서 발생하는 일련의 사건


//CUI(key) - GUI(마우스) - VUI(보이스) - AIUI(인공지능)
//DNA 메모리 라는것도 있음 == 4진법 기반

// 이벤트가 발생하면 운영체제는 메시지를 전달함.
// Message("이벤트 종류, 이벤트, 부가정보, 이벤트 발생시간, 이벤트 발생 app")

//-----------------------------------App영역---------------------------------------------------------
// 등록된 이벤트를 끄집는것 == 액션 == 아울렛 등록


