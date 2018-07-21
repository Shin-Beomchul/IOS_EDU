//
//  FatController.swift
//  FatApp
//
//  Created by chmac on 2018. 7. 21..
//  Copyright © 2018년 chmac. All rights reserved.
//

import UIKit

class FatController: UIViewController {
    
    

    @IBOutlet weak var iv: UIImageView!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        iv.image = #imageLiteral(resourceName: "con2")
        result.text = g.Fat
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
