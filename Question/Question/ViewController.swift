//
//  ViewController.swift
//  Question
//
//  Created by junai on 2019/11/29.
//  Copyright © 2019 junai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //定义问题
    let questions = ["马云是中国首富?",
                     "刘强东最早是在中关村卖光盘的?",
                     "苹果公司是目前世界上最牛的科技公司",
                     "只要坚持下去就能学好代码吗?",
                     "王思聪是80后?"]
    //定义答案
    let anwsers = [1,1,0,0,1] // 1 真 ，0 假
    
    //数组下标
    var questionsIndex = 0
    
    //得分
    var score = 0;
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIView!
    
    @IBOutlet weak var progressBar1: UIView!
    
    //初始化
    override func viewDidLoad() {
            questionLabel.text = questions[questionsIndex]
            countLabel.text = "\(questionsIndex+1)/5"
            scoreLabel.text = "\(score)";
            super.viewDidLoad()
            // Do any additional setup after loading the view.
    }
    
    //答案真
    @IBAction func yes(_ sender: UIButton) {
        check(userInput:1)//检查回答是否正确
        next(); //换下一个题目
    }
    
    //答案假
    @IBAction func no(_ sender: UIButton) {
        check(userInput:0)
        next();
    }
    //检查回答是否正确
    func check(userInput:Int){
          //获取正确答案
        var rightAnwser=anwsers[questionsIndex]
      
        if rightAnwser == userInput{
            alertAnwser(msg:"回答正确！")
            score = score + 1 //分数加一
            scoreLabel.text = "\(score)";
        }else{
            alertAnwser(msg:"回答错误！")
        }
    }
    
    //转到下一个问题
    func next(){
        questionsIndex = questionsIndex + 1

        //下标越界判断
        if questionsIndex == 5{
            questionsIndex = 0
            score = 0
            let alert1 = UIAlertController(title: "提示", message: "所有问题已回答完毕！", preferredStyle: UIAlertController.Style.alert)
            alert1.addAction(UIAlertAction(title: "再来一遍", style: .default, handler:{action in
                
                    self.scoreLabel.text = "0";
                
            }))
            present(alert1, animated: true, completion: nil)
        }
        
        //修改当前问题编号
        countLabel.text = "\(questionsIndex+1)/5";
        //修改问题内容
        questionLabel.text = questions[questionsIndex]
        //进度条设置
        progressBar.frame.size.width =
            ( view.frame.width / 5) * CGFloat(questionsIndex+1)
        
        progressBar1.frame.size.width
            = ( view.frame.width / 5 ) *
        CGFloat(questionsIndex+1)

    }
    
    
    
    //弹出提示框
    func alertAnwser(msg:String){
        if questionsIndex == 4{
            return;
        }
        let alert = UIAlertController(title: "提示", message: msg, preferredStyle: UIAlertController.Style.alert)
        present(alert, animated: true, completion: nil)
        presentedViewController?.dismiss(animated: true, completion: nil)
    }
}
