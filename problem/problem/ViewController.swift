//
//  ViewController.swift
//  problem
//
//  Created by s20181105306 on 2019/11/27.
//  Copyright © 2019 s20181105306. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let questions = ["马云是中国首富","刘强东最早是在中关村卖光盘的",
                "苹果公司是目前世界上最牛的科技公司"
    ]
    
    @IBOutlet weak var anwser: UILabel!
    var questionlndex = 0
    var questionsln = 0
    let answer = [1,1,0,0,1]//正确答案，0答案错误。
    //数组下标
    var questionslndex = 0
    //得分
    var score = 0;
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var alert: UIButton!
    //初始化
    
    override func viewDidLoad() {
        anwser.text = questions[questionlndex]
        countLabel.text = "\(questionslndex+1)/5"
        super.viewDidLoad()
        // Do any additional setup after loading the
        //view, typically from a nib.
        UIAlertAction.Style.default,handler:{
            action in print("确定")
        }
        aler.addAction（UIAlerAction(title:"取消",Style:UIAlertAction.Style.destructive,handler:{
            action in print("取消")
        })
        
    


    @IBAction func yes(_ sender: UIButton) {
        check(userlnput:1)
        next()
    }
    
    @IBAction func no(_ sender: UIButton) {
        check(userlnput:0)
        next();
    }
    //检查是否回答正确
    func check(userlnput:lnt){
        var rightAnwser = anwsers[questionslndex]//正确答案
        print("回答正确！")
    }else{
    print("回答错误！")
    }
}
//转到下一个问题
func next(){
    questionslndex = questionsln + 1
    //下标越界判断
    if questionslndex == 5{
        questionslndex = 0
        score = 0
    }
    
    countLabel.text = "\(questionslndex+1)/5"
    questionsLabel.text = questions[questionslndex]
    
    let alert = UIAlertController(title."提示",message:"弹出了一个框！",preferredStyle:UIAlertController.Style.alert)
    present(alert,animated:true,completion:nil)
    presentedViewcontroller?.dismiss(animated:Bool,completion:)
}


