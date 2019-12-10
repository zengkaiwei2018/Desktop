//
//  ViewController.swift
//  appleapp
//
//  Created by s20181105306 on 2019/10/18.
//  Copyright © 2019 s20181105306. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var one: UIImageView!
    
    @IBAction func yaoyiyao(_ sender: UIButton) {
        let random = Int.random(in: 1...6)
        
        one.image = UIImage(named:
        "dice\(random)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

