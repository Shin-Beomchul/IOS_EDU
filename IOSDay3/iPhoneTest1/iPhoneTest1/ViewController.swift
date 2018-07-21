//
//  ViewController.swift
//  iPhoneTest1
//
//  Created by chmac on 2018. 7. 21..
//  Copyright © 2018년 chmac. All rights reserved.
//

import UIKit

/* 뷰컨트롤러 : 밥상
 @IBOutlet weak var m_txtField: UITextField!
 @IBAction func onClick(_ sender: Any) {
 }
   뷰 : 쟁반
 
   // 뷰를 만들고 끄집어 놓으면 바로 만들 수 있음.
   //문법적을 필요 없음 알아서 해줌.
 
 
 */
class ViewController: UIViewController {

    
    @IBOutlet weak var m_txtField: UITextField!
    
    
    @IBAction func onClick(_ sender: Any) {
        m_txtField.text = "대한민국"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    

    
  

}

