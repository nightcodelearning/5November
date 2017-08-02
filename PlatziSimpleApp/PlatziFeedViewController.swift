//
//  PlatziFeedViewController.swift
//  PlatziSimpleApp
//
//  Created by Inés Rojas on 7/26/17.
//  Copyright © 2017 Inés Rojas. All rights reserved.
//

import Foundation
import UIKit

class  PlatziFeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let newCell = tableView.dequeueReusableCell(withIdentifier: "newPost") as! PlatzigramPostCell
        newCell.setPostUser(userName:  "User \(indexPath.row)")
        newCell.setPostTitle(postTitle: "Title \(indexPath.row)")
        return newCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         print("la celda que seleccionó fue \(indexPath.row)")
    }
    
    
}
