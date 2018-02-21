//
//  ViewController.swift
//  hoge
//
//  Created by 南雲 on 2018/02/20.
//  Copyright © 2018年 nagumo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    var ope: Int = 0
    
    func calcul(ope:Int){
        if ope == 1{
            number3 = number2 + number1
            label.text = String(number3)
            number1 = 0
            
            
        }else if ope == 2{
            number3 = number2 - number1
            label.text = String(number3)
            number1 = 0
           
        }else if ope == 3{
            number3 = number2 * number1
            label.text = String(number3)
            number1 = 0
           
        }else{
            number3 = number2 / number1
            label.text = String(number3)
            number1 = 0
            
        }
    }
    
    
    @IBAction func one(_ sender: Any) {
        number1 = number1 * 10 + 1
        label.text = String(number1)
        }
    
    
    @IBAction func two(_ sender: UIButton) {
        number1 = number1 * 10 + 2
        label.text = String(number1)
    }
    
    @IBAction func three(_ sender: UIButton) {
         number1 = number1 * 10 + 3
         label.text = String(number1)
    }
    
    @IBAction func four(_ sender: UIButton) {
         number1 = number1 * 10 + 4
         label.text = String(number1)
    }
    @IBAction func five(_ sender: UIButton) {
         number1 = number1 * 10 + 5
         label.text = String(number1)
    }
    
    @IBAction func six(_ sender: UIButton) {
         number1 = number1 * 10 + 6
         label.text = String(number1)
        
    }
    
    @IBAction func seven(_ sender: UIButton) {
         number1 = number1 * 10 + 7
         label.text = String(number1)
    }
    
    @IBAction func eight(_ sender: UIButton) {
         number1 = number1 * 10 + 8
         label.text = String(number1)
    }
    
    @IBAction func nine(_ sender: UIButton) {
         number1 = number1 * 10 + 9
         label.text = String(number1)
    }
    @IBAction func zero(_ sender: UIButton) {
         number1 = number1 * 10 + 0
         label.text = String(number1)
    }
    @IBAction func plus(_ sender: UIButton) {
        if number3 == 0{
            number2 = number1
            number1 = 0
            ope = 1
        }else{
            number2 = number3
            calcul(ope: 1)
            
        }
        
    }
    @IBAction func minus(_ sender: UIButton) {
        
        if number3 == 0{
            number2 = number1
            number1 = 0
            ope = 2
        }else{
            number2 = number3
            calcul(ope: 2)
            
        }
       
    }
    @IBAction func times(_ sender: UIButton) {
        
        if number3 == 0{
            number2 = number1
            number1 = 0
            ope = 3
        }else{
            number2 = number3
            calcul(ope: 3)
            
        }
    
    }
    @IBAction func divided(_ sender: UIButton) {
        
        if number3 == 0{
            number2 = number1
            number1 = 0
            ope = 4
        }else{
            number2 = number3
            calcul(ope: 4)
            
        }
        
    }
    @IBAction func equal(_ sender: UIButton) {
        if ope == 1 {
            calcul(ope: 1)
        }else if ope == 2{
            calcul(ope: 2)
        }else if ope == 3{
            calcul(ope: 3)
        }else{
            calcul(ope: 4)
    }
}
    
    @IBAction func clear(_ sender: UIButton) {
        number1 = 0
        number2 = 0
        number3 = 0
        ope = 0
        label.text = String(number1)
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

