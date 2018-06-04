//
//  ViewController.swift
//  CalculadoraIOS
//
//  Created by Ignacio Barrio Santos on 1/6/18.
//  Copyright © 2018 Ignacio Barrio Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pantalla: UILabel!
    //declaracion de varialbes
    var op1 = ""
    var op2 = ""
    var operacion = ""
    var primerOperando = true
    var esOperacion = false
    var limpiar = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /** Funcion para todas las teclas generales de la calculadora **/
    @IBAction func clickBoton(_ sender: UIButton) {
        if limpiar {
            pantalla.text = ""
            limpiar = false
        }
        let textoActual = pantalla.text!
        let titutloPantalla = sender.titleLabel?.text
        if let input = titutloPantalla {
            switch input {
            case "+", "*", "/", "-":
                if esOperacion {
                    return
                }
                operacion = input
                primerOperando = false
                esOperacion = true
                pantalla.text = "\(textoActual) \(operacion) "
                break
            case "Calcular":
                primerOperando = true
                esOperacion = false
                limpiar = true
                let result = calcular()
                pantalla.text = "\(result)"
                break
            case "CE":
                primerOperando = true
                esOperacion = false
                limpiar = true
                pantalla.text = ""
                op1 = ""
                op2 = ""
                operacion = ""
                break
            default:
                if primerOperando {
                    op1 = "\(op1)\(input)"
                } else {
                    op2 = "\(op2)\(input)"
                }
                pantalla.text = "\(textoActual)\(input)"
                break;
            }
        }
        
    }
    
    /** funcion para el tratamiento de las operaciones **/
    func calcular() -> Double {
        let firstNumber = Double(op1)!
        let secondNumber = Double(op2)!
        op1 = ""
        op2 = ""
        switch operacion {
            case "+":
                return firstNumber + secondNumber
            case "-":
                return firstNumber - secondNumber
            case "*":
                return firstNumber * secondNumber
            case "/":
                return firstNumber / secondNumber
            default:
                return 0
        }
    }
}

