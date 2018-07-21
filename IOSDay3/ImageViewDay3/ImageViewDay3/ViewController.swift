//
//  ViewController.swift
//  ImageViewDay3
//
//  Created by chmac on 2018. 7. 21..
//  Copyright © 2018년 chmac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iv: UIImageView!
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBAction func onSwitchChange(_ sender: Any) {
    
        if mSwitch.isOn {
            iv.image = #imageLiteral(resourceName: "con2")
        }else{
            iv.image = #imageLiteral(resourceName: "coff2")
        }
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

