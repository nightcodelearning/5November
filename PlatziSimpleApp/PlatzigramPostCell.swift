//
//  PlatzigramPostCell.swift
//  PlatziSimpleApp
//
//  Created by Inés Rojas on 7/25/17.
//  Copyright © 2017 Inés Rojas. All rights reserved.
//

import Foundation
import UIKit

class PlatzigramPostCell: UITableViewCell{
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postTitle: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        userNameLabel.text = ""
        postTitle.text = ""
        
    }
    
    
    public func setPostTitle(postTitle: String){
        self.postTitle.text = postTitle
    }
    
    public func setPostUser(userName: String){
        self.userNameLabel.text=userName
    }
}
