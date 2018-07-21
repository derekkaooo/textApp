//
//  ViewController.swift
//  textApp
//
//  Created by Derek on 2018/7/21.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var anotherTextField: UITextField!
    
    @IBAction func myTextField(_ sender: UITextField) {
        //輸入字數顯示在label上，因為是在textField上執行，所以textField要拉action
        myLabelOne.text = "字數：\(sender.text!.count)"
    }
    
    @IBOutlet weak var myLabelOne: UILabel!
    @IBOutlet weak var myLabelTwo: UILabel!
    
    @IBAction func mySlider(_ sender: UISlider) {
        //滑動slider時，滑動文字會顯示在label
        myLabelTwo.text = "文字大小：" + "\(Int(sender.value))"
        //宣告一個常數font，存入anotherTextField.font
        var font = anotherTextField.font
        //宣告一個常數fontSize，當作mySlider的sender.value
        let fontSize = sender.value
        //宣告一個常數textFieldSize(必須是CGFloat型別)，並將fontSize轉成CGFloat存入
        let textFieldSize:CGFloat = CGFloat(fontSize)
        
        //滑動slider時，anotherTextField字體會放大/縮小
        //withSize為蘋果寫的一個func(如下)，把textFieldSize當作參數回傳UIFont
        //func withSize(_ fontSize: CGFloat) -> UIFont
        anotherTextField.font = font?.withSize(textFieldSize)
        
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

