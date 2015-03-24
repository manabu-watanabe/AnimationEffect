//
//  ViewController.swift
//  AnimationEffect
//
//  Created by 渡部学 on 2015/03/24.
//  Copyright (c) 2015年 watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var moveView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // アニメーション用のビュー
        self.moveView = UIView(frame: CGRectMake(0, UIScreen.mainScreen().bounds.height / 2, 10, 10))
        self.moveView.backgroundColor = UIColor.greenColor()
        self.view.addSubview(self.moveView)
        
        // アニメーションなし
        let btn1: UIButton = UIButton(frame: CGRectMake(0, 10, 100, 50))
        btn1.backgroundColor = UIColor.orangeColor()
        btn1.setTitle("move", forState: UIControlState.Normal)
        btn1.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        btn1.addTarget(self, action: "onNoAnimationClick:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn1)
        
        // アニメーション1
        let btn2: UIButton = UIButton(frame: CGRectMake(110, 10, 100, 50))
        btn2.backgroundColor = UIColor.orangeColor()
        btn2.setTitle("Animation1", forState: UIControlState.Normal)
        btn2.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        btn2.addTarget(self, action: "onAnimation1Click:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn2)

        // アニメーション2
        let btn3: UIButton = UIButton(frame: CGRectMake(220, 10, 100, 50))
        btn3.backgroundColor = UIColor.orangeColor()
        btn3.setTitle("Animation2", forState: UIControlState.Normal)
        btn3.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        btn3.addTarget(self, action: "onAnimation2Click:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn3)

        // アニメーション3
        let btn4: UIButton = UIButton(frame: CGRectMake(0, 70, 100, 50))
        btn4.backgroundColor = UIColor.orangeColor()
        btn4.setTitle("Animation3", forState: UIControlState.Normal)
        btn4.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        btn4.addTarget(self, action: "onAnimation3Click:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn4)

        // アニメーション4
        let btn5: UIButton = UIButton(frame: CGRectMake(110, 70, 100, 50))
        btn5.backgroundColor = UIColor.orangeColor()
        btn5.setTitle("Animation4", forState: UIControlState.Normal)
        btn5.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        btn5.addTarget(self, action: "onAnimation4Click:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn5)

        // リセットボタン
        let btn6: UIButton = UIButton(frame: CGRectMake(220, 70, 100, 50))
        btn6.backgroundColor = UIColor.orangeColor()
        btn6.setTitle("reset", forState: UIControlState.Normal)
        btn6.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        btn6.addTarget(self, action: "onResetClick:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn6)
        
    }
    
    
    // アニメーションなし
    func onNoAnimationClick(sender: AnyObject!) {
        self.moveView.frame.origin.x = UIScreen.mainScreen().bounds.width - 10
    }
    
    
    // 1.のパターンのアニメーション
    func onAnimation1Click(sender: AnyObject!) {
        UIView.animateWithDuration(1, // アニメーションの時間
            animations: {() -> Void  in
                // アニメーションする処理
                self.moveView.frame.origin.x = UIScreen.mainScreen().bounds.width - 10
        })
    }
    
    // 2.のパターンのアニメーション
    func onAnimation2Click(sender: AnyObject!) {
        UIView.animateWithDuration(1, // アニメーションの時間
            animations: {() -> Void  in
                // アニメーションする処理
                self.moveView.frame.origin.x = UIScreen.mainScreen().bounds.width - 10
            },
            completion: {(finished: Bool) -> Void in
                // アニメーション終了後の処理
                self.moveView.backgroundColor = UIColor.redColor()
        })
    }
    
    // 3.のパターンのアニメーション
    func onAnimation3Click(sender: AnyObject!) {
        UIView.animateWithDuration(1, // アニメーションの時間
            delay: 0.5, // アニメーションの遅延時間
            options: UIViewAnimationOptions.CurveEaseIn, // 速度の変化オプション
            animations: {() -> Void  in
                // アニメーションする処理
                self.moveView.frame.origin.x = UIScreen.mainScreen().bounds.width - 10
            },
            completion: {(finished: Bool) -> Void in
                // アニメーション終了後の処理
                self.moveView.backgroundColor = UIColor.redColor()
        })
    }
    
    // 4.のパターンのアニメーション
    func onAnimation4Click(sender: AnyObject!) {
        UIView.animateWithDuration(1, // アニメーションの時間
            delay: 0.5,  // アニメーションの遅延時間
            usingSpringWithDamping: 0.5, // スプリングの効果(0..1)
            initialSpringVelocity: 0.5,  // バネの初速。(0..1)
            options: UIViewAnimationOptions.CurveEaseIn,
            animations: {() -> Void  in
                // アニメーションする処理
                self.moveView.frame.origin.x = UIScreen.mainScreen().bounds.width - 10
            },
            completion: {(finished: Bool) -> Void in
                // アニメーション終了後の処理
                self.moveView.backgroundColor = UIColor.redColor()
        })
    }
    
    // リセット
    func onResetClick(sender: AnyObject!) {
        self.moveView.frame.origin.x = 0
         self.moveView.backgroundColor = UIColor.greenColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

