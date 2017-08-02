//
//  ViewController.swift
//  PlatziSimpleApp
//
//  Created by Inés Rojas on 6/22/17.
//  Copyright © 2017 Inés Rojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiquetaHolaMundo: UILabel!
    
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Mark Actions
    
    @IBAction func presionoBoton(_ sender: UIButton) {
        
        if sender.isEqual(greenButton){
            self.etiquetaHolaMundo.textColor = UIColor.green
        }
        else if sender.isEqual(redButton){
            self.etiquetaHolaMundo.textColor = UIColor.red
        }
        else {
            self.etiquetaHolaMundo.textColor = UIColor.blue
        }
        
    }


}

