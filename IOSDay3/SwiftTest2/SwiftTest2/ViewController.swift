
//
//  ViewController.swift
//  SwiftTest2
//
//  Created by chmac on 2018. 7. 21..
//  Copyright © 2018년 chmac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mField: UITextField!
    @IBOutlet weak var bottomField: UITextField!
    @IBAction func onClick(_ sender: Any) {
   
        mField.text = "ggg"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditChange(_ sender: Any) {
        
        mField.text = bottomField.text
        
    }

}

