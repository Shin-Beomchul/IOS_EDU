//
//  ViewController.swift
//  iPhoneTest3Day3
//
//  Created by chmac on 2018. 7. 21..
//  Copyright © 2018년 chmac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var field1: UITextField!
    @IBOutlet weak var field2: UITextField!
    @IBOutlet weak var resultlabel: UILabel!
    
    @IBAction func onResult(_ sender: Any) {
        
        let first = Int(field1.text!)
        let second = Int(field2.text!)
        
        resultlabel.text = String(first! + second!)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

