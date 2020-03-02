//
//  ViewController.swift
//  IMC
//
//  Created by Mayara Andrade on 02/03/20.
//  Copyright © 2020 Mayara Andrade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfPeso: UITextField!
    
    @IBOutlet weak var tfAltura: UITextField!
    
    @IBOutlet weak var tfResultado: UILabel!
    
    @IBOutlet weak var imgResultado: UIImageView!
    
    @IBOutlet weak var ivResultado: UIView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalcular(_ sender: Any) {
        if let peso = Double(tfPeso.text!),
            let altura = Double(tfAltura.text!){
            imc = peso / (altura*peso)
            mostrarResultado()
        }
    }
        func mostrarResultado(){
            var result: String = ""
            var image: String = ""
            switch imc {
                case 0..<16:
                    result = "Magreza"
                    image = "abaixo"
                case 16..<18.5:
                    result = "Baixo do peso"
                    image = "abaixo"
                case 18..<25:
                    result = "Peso ideal"
                    image = "ideal"
                case 25..<30:
                    result = "Sobrepeso"
                    image = "sobre"
                default:
                    result = "Obesidade"
                    image = "obesidade"
        }
            tfResultado.text = result
            imgResultado.image = UIImage (named: image)
            ivResultado.isHidden = false
        }
}
