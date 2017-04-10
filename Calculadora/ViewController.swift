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
    var num2: Double = -993232121.0
    var finalRes: Double = 0.0
    var res: Double = 0.0
    var operador: String = ""
    var numEntrada: String = ""
    var auxFinal:Double=1
    var introducidoOperador: Bool = true
    
    @IBOutlet weak var lbPantalla3: UILabel!
    @IBOutlet weak var lbPantalla2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickRestar(_ sender: UIButton) {
        if (introducidoOperador==false){
            lbPantalla.text=lbPantalla.text! + " - "
            print("El numero guardado a multiplicar es \(num1)")
            print("El numero de entrada es \(numEntrada)")
            //Si operador era * o / tendremos que resolver antes esa operacion
            if (operador=="*"){
                res = Double(numEntrada)! * num1
                print("El resultado de la multiplicacion es \(res)")
                lbPantalla2.text=lbPantalla2.text!.appending("\(res) - ")
                //Pintamos el resultado en la caja resultado final
                finalRes = finalRes - res*auxFinal
                lbPantalla3.text = String(finalRes)
            } else if(operador=="/"){
                res = num1 / Double(numEntrada)!
                print("El resultado de la division es \(res)")
                lbPantalla2.text=lbPantalla2.text!.appending("\(res) - ")
                //Pintamos el resultado en la caja resultado final
                finalRes = finalRes - res*auxFinal
                lbPantalla3.text = String(finalRes)
            } else {
                print("El numero num2 es \(num2)")
                lbPantalla2.text = lbPantalla2.text!.appending("\(numEntrada) - ")
                if (operador=="+"){
                    finalRes = finalRes + Double(numEntrada)!
                    lbPantalla3.text = String(finalRes)
                } else {
                    if (num2 == -993232121.0){
                        finalRes = finalRes + Double(numEntrada)!
                        lbPantalla3.text = String(finalRes)
                    } else {
                        finalRes = finalRes - Double(numEntrada)!
                        lbPantalla3.text = String(finalRes)
                    }
                }
            }
            introducidoOperador=true
            operador="-"
            num2 = Double(numEntrada)!
            numEntrada=""
            auxFinal = -1
        }
        
    }

    @IBAction func onClickSumar(_ sender: UIButton) {
        if (introducidoOperador==false){
            lbPantalla.text=lbPantalla.text! + " + "
            print("El numero guardado a multiplicar es \(num1)")
            print("El numero de entrada es \(numEntrada)")

            //Si operador era * o / tendremos que resolver antes esa operacion
            if (operador=="*"){
                res = Double(numEntrada)! * num1
                print("El resultado de la multiplicacion es \(res)")
                lbPantalla2.text=lbPantalla2.text!.appending("\(res) + ")
                //Pintamos el resultado en la caja resultado final
                finalRes = finalRes + res*auxFinal
                lbPantalla3.text = String(finalRes)
            } else if(operador=="/"){
                res = num1 / Double(numEntrada)!
                print("El resultado de la división es \(res)")
                lbPantalla2.text=lbPantalla2.text!.appending("\(res) + ")
                //Pintamos el resultado en la caja resultado final
                finalRes = finalRes + res*auxFinal
                lbPantalla3.text = String(finalRes)
            } else {
                print("El numero num2 es \(num2)")
                lbPantalla2.text = lbPantalla2.text!.appending("\(numEntrada) + ")
                if (operador=="+"){
                    finalRes = finalRes + Double(numEntrada)!
                    lbPantalla3.text = String(finalRes)
                } else {
                    if (num2 == -993232121.0){
                        finalRes = finalRes + Double(numEntrada)!
                        lbPantalla3.text = String(finalRes)
                    } else {
                        finalRes = finalRes - Double(numEntrada)!
                        lbPantalla3.text = String(finalRes)
                    }
                }
            }
            introducidoOperador=true
            operador="+"
            num2 = Double(numEntrada)!
            numEntrada=""
            auxFinal=1
            }


    }
    @IBAction func onClickDividir(_ sender: UIButton) {
        if (introducidoOperador==false){
            num1 = Double(numEntrada)!
            lbPantalla.text=lbPantalla.text! + " / "
            operador="/"
            numEntrada=""
            introducidoOperador=true
        }
        
    }
    @IBAction func onClickMultiplicar(_ sender: UIButton){
        if (introducidoOperador==false){
            num1 = Double(numEntrada)!
            lbPantalla.text=lbPantalla.text! + " * "
            operador="*"
            numEntrada=""
            introducidoOperador=true
        }
    }
    @IBAction func onClickIgual(_ sender: UIButton) {
        if (introducidoOperador==false){
            if (operador=="*"){
                res = Double(numEntrada)! * num1
                print("El resultado de la multiplicacion es \(res)")
                lbPantalla2.text=lbPantalla2.text!.appending("\(res)")
                //Pintamos el resultado en la caja resultado final
                finalRes = finalRes + res*auxFinal
                lbPantalla3.text = String(finalRes)
            } else if(operador=="/"){
                res = num1 / Double(numEntrada)!
                print("El resultado de la división es \(res)")
                lbPantalla2.text=lbPantalla2.text!.appending("\(res)")
                //Pintamos el resultado en la caja resultado final
                finalRes = finalRes + res*auxFinal
                lbPantalla3.text = String(finalRes)
            } else {
                print("El numero num2 es \(num2)")
                lbPantalla2.text = lbPantalla2.text!.appending("\(numEntrada)")
                if (operador=="+"){
                    finalRes = finalRes + Double(numEntrada)!
                    lbPantalla3.text = String(finalRes)
                } else {
                    if (num2 == -993232121.0){
                        finalRes = finalRes + Double(numEntrada)!
                        lbPantalla3.text = String(finalRes)
                    } else {
                        finalRes = finalRes - Double(numEntrada)!
                        lbPantalla3.text = String(finalRes)
                    }
                }
            }
        }
        
        //Reseteamos
        auxFinal=1
        introducidoOperador=true

    }
    @IBAction func onClickbt1(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"1"
        numEntrada = numEntrada+"1"
        introducidoOperador=false
    }
    @IBAction func onClickbt2(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"2"
        numEntrada = numEntrada+"2"
        introducidoOperador=false
    }
    @IBAction func onClickbt3(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"3"
        numEntrada = numEntrada+"3"
        introducidoOperador=false
    }
    @IBAction func onClickbt4(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"4"
        numEntrada = numEntrada+"4"
        introducidoOperador=false
    }
    @IBAction func onClickbt5(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"5"
        numEntrada = numEntrada+"5"
        introducidoOperador=false
    }
    @IBAction func onClickbt6(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"6"
        numEntrada = numEntrada+"6"
        introducidoOperador=false
    }
    @IBAction func onClickbt7(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"7"
        numEntrada = numEntrada+"7"
        introducidoOperador=false
    }
    @IBAction func onClickbt8(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"8"
        numEntrada = numEntrada+"8"
        introducidoOperador=false
    }
    @IBAction func onClickbt9(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"9"
        numEntrada = numEntrada+"9"
        introducidoOperador=false
    }
    @IBAction func onClickbt0(_ sender: UIButton) {
        lbPantalla.text = lbPantalla.text!+"0"
        numEntrada = numEntrada+"0"
        introducidoOperador=false
    }
    @IBAction func onClickbtDecimal(_ sender: UIButton) {
        if (!(lbPantalla.text?.contains("."))!){
            lbPantalla.text = lbPantalla.text!+"."
            numEntrada = numEntrada+"."
        }
    }
    @IBAction func onClickClear(_ sender: UIButton) {
        lbPantalla.text=""
        numEntrada = ""
        num1=0.0
        num2=0.0
        lbPantalla2.text=""
        lbPantalla3.text=""
        finalRes=0.0
        auxFinal=1
        introducidoOperador=true
    }
}

