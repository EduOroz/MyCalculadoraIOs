//
//  ViewController.swift
//  Calculadora
//
//  Created by user125877 on 7/4/17.
//  Copyright © 2017 user125877. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbPantalla: UILabel!
    var num1: Double = 0.0
    var num2: Double = 0.0
    var res: Double = 0.0
    var operador: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickRestar(_ sender: UIButton) {
        num1 = Double(lbPantalla.text!)!
        lbPantalla.text=""
        operador="-"
    }

    @IBAction func onClickSumar(_ sender: UIButton) {
        num1 = Double(lbPantalla.text!)!
        lbPantalla.text=""
        operador="+"

    }
    @IBAction func onClickDividir(_ sender: UIButton) {
        num1 = Double(lbPantalla.text!)!
        lbPantalla.text=""
        operador="/"
    }
    @IBAction func onClickMultiplicar(_ sender: UIButton) {
        num1 = Double(lbPantalla.text!)!
        lbPantalla.text=""
        operador="*"
    }
    @IBAction func onClickIgual(_ sender: UIButton) {
        num2 = Double(lbPantalla.text!)!
        print("Numero 1 \(num1) Numero 2 \(num2)")
        switch operador {
        case "+":
            print("Estamos sumando")
            res = num1+num2
            print("El resultado es \(res)")
            lbPantalla.text = String(res)
        case "-":
            print("Estamos restando")
            res = num1 - num2
            lbPantalla.text = String(res)
        case "/":
            print("Estamos dividiendo")
            res = num1/num2
            print("El resultado es \(res)")
            lbPantalla.text = String(res)
        case "*":
            print("Estamos multiplicando")
            res = num1 * num2
            lbPantalla.text = String(res)
        default:
            print("Estamos en default")
        }
    }
    @IBAction func onClickbt1(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"1"
    }
    @IBAction func onClickbt2(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"2"
    }
    @IBAction func onClickbt3(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"3"
    }
    @IBAction func onClickbt4(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"4"
    }
    @IBAction func onClickbt5(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"5"
    }
    @IBAction func onClickbt6(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"6"
    }
    @IBAction func onClickbt7(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"7"
    }
    @IBAction func onClickbt8(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"8"
    }
    @IBAction func onClickbt9(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"9"
    }
    @IBAction func onClickbt0(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"0"
    }
    @IBAction func onClickbtDecimal(_ sender: UIButton) {
        if (!(lbPantalla.text?.contains("."))!){
            lbPantalla.text = lbPantalla.text!+"."
        }
    }
    @IBAction func onClickClear(_ sender: UIButton) {
        lbPantalla.text=""
    }
}

