//
//  PlatzigramTabBarController.swift
//  PlatziSimpleApp
//
//  Created by Inés Rojas on 7/10/17.
//  Copyright © 2017 Inés Rojas. All rights reserved.
//

import Foundation

import UIKit

class PlatzigramTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(self.viewControllers!.count)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let newController = UIViewController()
        newController.view.backgroundColor = UIColor.green
        newController.title = "Verde"
        
        self.viewControllers!.append(newController)
        
        self.viewControllers![2].title = "Hola mundo"
        
        
        if UserDefaults.standard.value(forKey: "userToken") == nil {
            
            self.performSegue(withIdentifier: "register", sender: nil)
            
        }
        
        
    }

    
}
