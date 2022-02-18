//
//  ViewController.swift
//  Practica2_EnviarParametros
//
//  Created by Mac13 on 16/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var nombreTF: UITextField!
    @IBOutlet weak var edadTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    var edadInt = Int("18")
    var edadTexto = String(18)

    
    @IBAction func enviarBTN(_ sender: UIButton) {
        //llama a la segunda pantalla
        performSegue(withIdentifier: "enviarTexto", sender: nil)
        //print("Enviar")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarTexto"{
            let objDestino = segue.destination as! SegundoViewController
            objDestino.recibirNombre = nombreTF.text
            objDestino.recibirEdad = edadTF.text
        }
    }
    
}

