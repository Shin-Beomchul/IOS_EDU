//
//  SecondViewController.swift
//  MultiViewSeagure
//
//  Created by chmac on 2018. 7. 21..
//  Copyright © 2018년 chmac. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var rec: UILabel!
    
    override func viewDidLoad() {
        
        
        rec.text = g.g_myg
    }
    
    
    // 뷰가 곧 안보여질 것이다.
    override func viewWillDisappear(_ animated: Bool) {
        <#code#>
    }
}
