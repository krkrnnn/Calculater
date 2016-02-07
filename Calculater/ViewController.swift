//
//  ViewController.swift
//  Calculater
//
//  Created by 福田かるな on 2016/01/31.
//  Copyright © 2016年 Karuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    var number: Int = 0
    var number2: Int = 0
    var operation: Int = 0//plusが押されているかどうか判別
    //var operation2: Int = 0
    //var operation3: Int = 0
    //var operation4: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func select1(){
        number = number*10 + 1
        label.text = String(number)
    }
    @IBAction func select2(){
        number = number*10 + 2
        label.text = String(number)
    }

    @IBAction func select3(){
        number = number*10 + 3
        label.text = String(number)
    }
    @IBAction func select4(){
        number = number*10 + 4
        label.text = String(number)
    }
    @IBAction func select5(){
        number = number*10 + 5
        label.text = String(number)
    }
    @IBAction func select6(){
        number = number*10 + 6
        label.text = String(number)
    }
    @IBAction func select7(){
        number = number*10 + 7
        label.text = String(number)
    }
    @IBAction func select8(){
        number = number*10 + 8
        label.text = String(number)
    }
    @IBAction func select9(){
        number = number*10 + 9
        label.text = String(number)
    }
    @IBAction func select0(){
        number = number*10 + 0
        label.text = String(number)
    }

    @IBAction func plus(){
        //plusボタンを押したときlabelに0が表示される
        label.text = "0"
        
        operation = 1
        number2 = number
        number = 0
    }
    @IBAction func minus(){
        //minusボタンを押したときlabelに0が表示される
        label.text = "0"
        
        operation = 2
        number2 = number
        number = 0
    }
    @IBAction func division(){
        //×ボタンを押したときlabelに0が表示される
        label.text = "0"
        
        operation = 3
        number2 = number
        number = 0
    }
    @IBAction func multiplication(){
        //わるボタンを押したときlabelに0が表示される
        label.text = "0"
        
        operation = 4
        number2 = number
        number = 0
    }
    @IBAction func clear(){
        label.text = "0"
        number2 = 0
        number = 0
    }

    @IBAction func equal(){
        if operation == 1 {//もしplusが押されていたら
            label.text = String(number+number2)
        }
        if operation == 2{
            label.text = String(number-number2)
        }
        if operation == 3{
            label.text = String(number*number2)
        }
        
        if operation == 4{
            label.text = String(number/number2)
        }
    }
}

