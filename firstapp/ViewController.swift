//
//  ViewController.swift
//  firstapp
//
//  Created by Асылбек Тасым on 17.11.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func touched(_ sender: Any) {
        let a = textfield.text!
        let b = textfield2.text!
        let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        label.text = String(sum)
    }
    
    @IBAction func minus(_ sender: Any) {
        let a = textfield.text!
        let b = textfield2.text!
        if let numA = Int(a), let numB = Int(b){
            let minus = numA - numB
            label.text = String(minus)
        }else {
            label.text = "Введите 2 числа"
        }
    }
    
    @IBAction func multiplication(_ sender: Any) {
        let a = textfield.text!
        let b = textfield2.text!
        guard let numA = Int(a), let numB = Int(b) else{
            label.text = "Введите 2 числа"
            return
        }
        let multiply = numA * numB
        label.text = String(multiply)
        
        
    }
    @IBAction func division(_ sender: Any) {
        let a = textfield.text!
        let b = textfield2.text!
        guard let numA = Int(a), let numB = Int(b) else{
            label.text = "Введите 2 числа"
            return
        }
        if numB == 0{
            label.text = "Делить на 0 невозможно"
            return
    
        }
        let divide = Double(numA) / Double(numB)
        label.text = String(divide)
        
        
        
    }
    
    @IBAction func square(_ sender: Any) {
        guard let a = textfield.text, let b = textfield2.text, let firstNum = Double(a), let secondNum = Double(b) else{
            label.text = "Введите 2 числа"
            return
        }
        let squareOfNum = pow(firstNum, secondNum)
        label.text = String(squareOfNum)

    }
    @IBAction func avg(_ sender: Any) {
        let a = textfield.text!
        let b = textfield2.text!
        if let numA = Int(a), let numB = Int(b){
            let avgOfNums = (Double(numA) + Double(numB)) / 2
            
            label.text = String(avgOfNums)
        }else {
            label.text = "Введите 2 числа"
        }
        
        
    }
    
    @IBAction func remainder(_ sender: Any) {
        let a = textfield.text!
        let b = textfield2.text!
        guard let numA = Int(a), let numB = Int(b) else{
            label.text = "Введите 2 числа"
            return
        }
        if numB == 0{
            label.text = "Делить на 0 невозможно"
            return
    
        }
        let remainderOfNum = Int(numA) % Int(numB)
        label.text = String(remainderOfNum)
        
        
    }
    
    @IBAction func perncent(_ sender: Any) {
        guard let a = textfield.text, let b = textfield2.text,
              let firstNum = Double(a), let secondNum = Double(b),firstNum != 0 else{
            label.text = "Введите число"
            return
        }
        let percentOfNums = ((secondNum * 100)/firstNum)
        label.text = String(percentOfNums)
    }
    
    
}

