//
//  WelcomeViewController.swift
//  PlatziSimpleApp
//
//  Created by Inés Rojas on 6/27/17.
//  Copyright © 2017 Inés Rojas. All rights reserved.
//

import Foundation
import UIKit

class WelcomeViewController : UIViewController{
    
    var etiquetaBienvenida : UILabel?
    var imagenBienvenida : UIImageView?
    var botonLogin : UIButton?
    var botonsingup : UIButton?
    
    
    override func viewDidLoad() {
         super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if etiquetaBienvenida == nil{
        etiquetaBienvenida = UILabel ()
        etiquetaBienvenida?.text = "Bienvenido a Platzi"
        etiquetaBienvenida?.font = UIFont.systemFont(ofSize: 17)
        etiquetaBienvenida?.textColor = UIColor.orange
        etiquetaBienvenida?.sizeToFit()
        etiquetaBienvenida?.frame = CGRect(x: 0, y: 20, width: etiquetaBienvenida!.frame.size.width, height: etiquetaBienvenida!.frame.size.height)
        etiquetaBienvenida?.center = CGPoint (x: self.view.frame.size.width/2, y: etiquetaBienvenida!.center.y)
        
        self.view.addSubview(etiquetaBienvenida!)
        }
        
        if botonsingup == nil {
        botonsingup = UIButton (type: .custom)
        botonsingup?.setTitle("SignUp", for: .normal)
        botonsingup?.setTitleColor(UIColor.red, for: .normal)
        botonsingup?.sizeToFit()
        botonsingup?.frame = CGRect(x: 20, y: self.view.frame.size.height - 15 - 20, width: self.view.frame.size.width-40, height: 20)
        botonsingup?.addTarget(self, action: #selector(apretoBoton(sender:)), for: .touchUpInside)
        self.view.addSubview(botonsingup!)
        }
        
        if botonLogin == nil {
            botonLogin = UIButton(type: .custom)
            botonLogin?.setTitle("Login", for: .normal)
            botonLogin?.setTitleColor(UIColor.blue, for: .normal)
            botonLogin?.sizeToFit()
            botonLogin?.frame = CGRect(x: 20, y: botonsingup!.frame.origin.y - 20 - 20, width: self.view.frame.size.width - 40, height: 20)
            botonLogin?.addTarget(self, action: #selector(apretoBoton(sender:)), for: .touchUpInside)
            self.view.addSubview(botonLogin!)
            
        }
        
        if imagenBienvenida == nil {
            
            imagenBienvenida = UIImageView(image: UIImage(named: "PlatziLogo"))
            imagenBienvenida?.frame = CGRect(x: 20, y: etiquetaBienvenida!.frame.maxY + 40, width: self.view.frame.size.width - 40, height: 80)
            imagenBienvenida?.contentMode = .scaleAspectFit
            self.view.addSubview(imagenBienvenida!)
            
        }
        
        
    }
    
    func apretoBoton(sender : UIButton ) {
        print("presionó \(sender.title(for: .normal)!)")
        
        /*
        let alerta = UIAlertController(title: "Sin Cuenta", message: "Por el momento no tienes una cuenta", preferredStyle: .alert)
        
        let crearCuenta = UIAlertAction(title: "Crear Cuenta", style: .default, handler: {
        accionCrearCuenta in
            print ("presionó el botón crear cuenta")
        })
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: {
        accionCancelar in
            print(" Presionó el boton cancelar")
        })
        
        alerta.addAction(cancelar)
        alerta.addAction(crearCuenta)
        
        self.present(alerta, animated: true, completion: nil)*/
        
        if sender.isEqual(botonsingup!){
            self.performSegue(withIdentifier: "signup", sender: nil)
        }
        
    }
    
    
}


