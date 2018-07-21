//
//  ViewController.swift
//  FatApp
//
//  Created by chmac on 2018. 7. 21..
//  Copyright © 2018년 chmac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cm: UITextField!
    @IBOutlet weak var height: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 

    @IBAction func onResultPage(_ sender: Any) {
        
        let cmi = Int(cm.text!)
        let heightI = Int(height.text!)
        
        
        g.Fat = calc(cmi!,heightI!)
        
        
    }
    
    func calc(_ cm:Int,_ height:Int)->String?{
        
        //someCalc
        
        
        return "비만"
        
    }
    
    
    

}

