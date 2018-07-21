//
//  ViewController.swift
//  MultiViewSeagure
//
//  Created by chmac on 2018. 7. 21..
//  Copyright © 2018년 chmac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myField: UITextField!
    @IBAction func onClick(_ sender: Any) {
        
        let alect = UIAlertController(title: "제목"
            , message: "알림 테스트"
            , preferredStyle: UIAlertControllerStyle.alert)
        
        
        let okBtn = UIAlertAction(title: "확인", style: UIAlertActionStyle.default
//            , handler: {// 클로져 == 람다
//                 action in print("ok Call")
//            }
            ,handler: self.alectOKClick
        )
        
        
        let cancelBtn = UIAlertAction(title: "취소", style: UIAlertActionStyle.default
            //            , handler: {// 클로져 == 람다
            //                 action in print("ok Call")
            //            }
            ,handler:{
                action in  self.alectCancelClick(action: action)
             }
        )
        
        
        alect.addAction(okBtn)
        alect.addAction(cancelBtn)
        
      self.present(alect, animated: true, completion: nil)
    }
    
    
    
    // 화면 이동전 해당 함수 호출
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        g.g_myg = myField.text!
    }
 
    
    
    func alectOKClick(action : UIAlertAction){
        
        
    }
    
    func alectCancelClick(action : UIAlertAction){
        
       
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

}

