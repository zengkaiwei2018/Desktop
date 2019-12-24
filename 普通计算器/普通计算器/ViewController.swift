//
//  ViewController.swift
//  普通计算器
//
//  Created by bailv on 2019/11/1.
//  Copyright © 2019 bailv. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Thread.sleep(forTimeInterval: 2.0)
        // Do any additional setup after loading the view.
    }
    var NumSum1:Double = 0
    var NumSum2:Double = 0
    var count:Double = -1
    var oper = "-"
    var result:Double = 0
    var spot:Bool = false ;
    @IBOutlet weak var resulttext: UITextView!
    func show(a:Double)
    {
        var bot:Double = 0
        bot = a - Double(Int(a))
        if bot != 0 {
            resulttext.text = String(a)
        }
        else{
            resulttext.text = String(Int(a))
        }
    }
    
    @IBOutlet weak var AC: UIButton!
    @IBAction func AC(_ sender: Any) {
        NumSum1 = 0;
        NumSum2 = 0;
        result = 0;
        spot = false;
        count = -1;
        show(a: NumSum1);
    }
    @IBAction func num1(_ sender: Any) {
        if spot == true {
            NumSum1 = NumSum1 + 1 * pow(10,count)
            count = count - 1
        }
        else {
            NumSum1 = NumSum1 * 10 + 1;
        }
        show(a: NumSum1);
        
    }
    
    @IBAction func num2(_ sender: Any) {
        if spot == true {
            NumSum1 = NumSum1 + 2 * pow(10,count)
            count = count - 1
        }
        else {
            NumSum1 = NumSum1 * 10 + 2;
        }
        show(a: NumSum1);
        
    }
    
    @IBAction func num3(_ sender: Any) {
        if spot == true {
            NumSum1 = NumSum1 + 3 * pow(10,count)
            count = count - 1
        }
        else {
            NumSum1 = NumSum1 * 10 + 3;
        }
        show(a: NumSum1);
        
    }
    
    @IBAction func num4(_ sender: Any) {
        if spot == true {
            NumSum1 = NumSum1 + 4 * pow(10,count)
            count = count - 1
        }
        else {
            NumSum1 = NumSum1 * 10 + 4;
        }
        show(a: NumSum1);
        
    }
    
    @IBAction func num5(_ sender: Any) {
        if spot == true {
            NumSum1 = NumSum1 + 5 * pow(10,count)
            count = count - 1
        }
        else {
            NumSum1 = NumSum1 * 10 + 5;
        }
        show(a: NumSum1);
        
    }
    
    @IBAction func num6(_ sender: Any) {
        if spot == true {
            NumSum1 = NumSum1 + 6 * pow(10,count)
            count = count - 1
        }
        else {
            NumSum1 = NumSum1 * 10 + 6;
        }
        show(a: NumSum1);
        
    }
 
    @IBAction func num7(_ sender: Any) {
        if spot == true {
            NumSum1 = NumSum1 + 7 * pow(10,count)
            count = count - 1
        }
        else {
            NumSum1 = NumSum1 * 10 + 7;
        }
        show(a: NumSum1);
    }
    
    @IBAction func num8(_ sender: Any) {
       if spot == true {
            NumSum1 = NumSum1 + 8 * pow(10,count)
            count = count - 1
        }
        else {
            NumSum1 = NumSum1 * 10 + 8;
        }
        show(a: NumSum1);
        
    }
    @IBAction func num9(_ sender: Any) {
      if spot == true {
            NumSum1 = NumSum1 + 9 * pow(10,count)
            count = count - 1
        }
        else {
            NumSum1 = NumSum1 * 10 + 9;
        }
        show(a: NumSum1);
        
    }
    
    @IBAction func num0(_ sender: Any) {
       if spot == true {
            NumSum1 = NumSum1 + 0 * pow(10,count)
            count = count - 1
        }
        else {
            NumSum1 = NumSum1 * 10 + 0;
        }
        show(a: NumSum1);
        
    }
    @IBAction func oper1(_ sender: Any) {     //"."
        spot = true
    }
    
    @IBAction func oper2(_ sender: Any) {    //"+/-"
        NumSum1 = -NumSum1;
        show(a: NumSum1);
    }
    
    @IBAction func oper3(_ sender: Any) {    //"%"
        NumSum1 = NumSum1 / 100
        show(a: NumSum1);
    }
    @IBAction func oper4(_ sender: Any) {     //"/"
        oper = "/";
        NumSum2 = NumSum1;
        NumSum1 = 0;
        spot = false;
        count = -1;
        show(a: NumSum1);
    }
    @IBAction func oper5(_ sender: Any) {     //"*"
        oper = "*";
        NumSum2 = NumSum1;
        NumSum1 = 0;
        spot = false;
        count = -1;
        show(a: NumSum1);
    }
    
    @IBAction func oper6(_ sender: Any) {     //"-"
        oper = "-";
        NumSum2 = NumSum1;
        NumSum1 = 0;
        spot = false;
        count = -1;
        show(a: NumSum1);
    }
    
    @IBAction func oper7(_ sender: Any) {    //"+"
        oper = "+";
        NumSum2 = NumSum1;
        NumSum1 = 0;
        spot = false;
        count = -1;
        show(a: NumSum1);
    }
    @IBAction func oper8(_ sender: Any) {   //"="
        switch (oper){
        case "+":result = NumSum2 + NumSum1 ;
        case "-":result = NumSum2 - NumSum1 ;
        case "*":result = NumSum2 * NumSum1 ;
        case "/":result = NumSum2 / NumSum1 ;
        default:result = 0 ;
        }
        show(a: result);
        NumSum1 = result
        spot = false;
        count = -1;
    }
    
    
    
    
    
}

