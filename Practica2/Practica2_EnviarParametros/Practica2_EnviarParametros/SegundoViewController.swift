//
//  SegundoViewController.swift
//  Practica2_EnviarParametros
//
//  Created by Mac13 on 16/02/22.
//

import UIKit

class SegundoViewController: UIViewController {
    
    var recibirNombre: String? //? especifica que la var es opcional
    var recibirEdad: String?
    

    @IBOutlet weak var imagenValidarIV: UIImageView!
    @IBOutlet weak var nombreLbl: UILabel!
    
    //Siempre se ejecuta al iniciar la pantalla
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(recibirNombre ?? "Sin nombre")
        print(recibirEdad!)
        let edadInt = Int(recibirEdad!) ?? 0 //! existe doble validacion para asegurarse que la variable contenga algo ? agrega un valor por default
        //if let
        
        //se valida la edad del usuario
        if(edadInt >= 18){
            self.view.backgroundColor = UIColor.green
            imagenValidarIV.image = UIImage(systemName: "mustache.fill")
            print("Puede pasar")
        }else{
            //el color de imagen cambia junto con la imagen
            self.view.backgroundColor = UIColor.cyan
            imagenValidarIV.image = UIImage(systemName: "zzz")
            print("No admitimos pequeñines")
        }
        
        
        
        //Se modifica el texto del label
        nombreLbl.text =  "Bienvenido \(recibirNombre!)"
        
        //imagen cambia
        //el color de pantalla cambia
    }
    
    @IBAction func regresarBTN(_ sender: UIButton) {
        dismiss(animated: true) {
            print("Regreso a pantalla principal")
        }
    }
    
    @IBAction func salirBTN(_ sender: UIButton) {
        exit(0)
    }
    
}
