//
//  ViewController.swift
//  app3
//
//  Created by s20181105306 on 2019/10/23.
//  Copyright © 2019 s20181105306. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNumber1: UITextField!
    
    @IBOutlet weak var tfNmber2: UITextField!
    
   
    @IBOutlet weak var tfoperator: UITextField!
    
    @IBOutlet weak var tfresult: UITextField!
    
    @IBAction func sum(_ sender: Any) {
        tfoperator.text = "+"
    }
    //减
    @IBAction func jian(_ sender: Any) {
      tfoperator.text = "-"
    }
    //乘
    @IBAction func cheng(_ sender: Any) {
        tfoperator.text = "*"
    }
    //除
    @IBAction func chu(_ sender: Any) {
        tfoperator.text = "/"
    }
    
    @IBAction func caculate(_ sender: Any) {
        let num1 = tfNumber1.text!
        let num2 = tfNmber2.text!
        let op = tfoperator.text
        let num1d = Double(num1)!
        let num2d = Double(num2)!
        
        
        switch op {
        case "+":
            tfresult.text = "\(num1d + num2d)"
        case "-":
            tfresult.text = "\(num1d - num2d)"
        case "*":
            tfresult.text = "\(num1d * num2d)"
        case "/":
            tfresult.text = "\(num1d / num2d)"
        default:
            break
        }
        
    }
    @IBAction func jisuan(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

