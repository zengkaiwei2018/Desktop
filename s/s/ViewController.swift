//
//  ViewController.swift
//  s
//
//  Created by s20181105306 on 2019/11/1.
//  Copyright © 2019 s20181105306. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var txtResult: UITextField!
    @IBAction func inputnumber(_ sender: Any) {
        let cButton = sender as! UIButton
txtResult.text = txtResult.text! +
    cButton.currentTitle!
        
    }
    //检查是否包含“.”
    if Button.currentTitle! == "."{// 当前输入为“.”
    if(txtResult.text?.contains(".")){
    return
    }
    
    }
    if txtResult.text! == "0" &&
    cButton.currentTitle! != "."{
    //默认值的时候点击非“.”的按钮
    txtResult.text = cButton.currentTitle!
    }
    else{
    txtResult.text = txtResult.text!+cButton.currentTitle!
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        var cButton = sender as! UIBUtton
        operation = cButton.currentTitle!
        lastvalue = Double(txtResult.text!)!
        txtResult.text = "0"
    }
    //等于
    
    @IBAction func equal(_ sender: Any) {
        let currentValue = Double(txtResult.text!)!
        switch operation{
            case "+":
                txtResult.text = string(lastValue + currentValue)
            case "-":
                txtResult.text = string(lastValue - currentValue)
            case "*":
                txtResult.text = string(lastValue * currentValue)
            
        }
    }
    
    override func viewDidLoad() {
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

