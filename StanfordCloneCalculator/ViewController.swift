//
//  ViewController.swift
//  StanfordCloneCalculator
//
//  Created by 박나연 on 1/18/24.
//

//import 뒤에는 파일이 아닌 모듈임.
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping : Bool = false
    
    
    @IBAction func touchDigit(_ sender: UIButton){
        let digit : String = sender.currentTitle!
        print(digit)
        if userIsInTheMiddleOfTyping{
            let textCurrentylInDisplay = display.text!
            //dispaly변수에 뭔가를 보낼 거임.
            display.text = textCurrentylInDisplay + digit
        }else{
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        
        if let mathmadicalSymbol = sender.currentTitle{
            if mathmadicalSymbol == "π"{
                display.text = String(Double.pi)
            }
        }
    }
    
}

