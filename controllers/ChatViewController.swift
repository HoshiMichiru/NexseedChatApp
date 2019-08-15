//
//  ChatViewController.swift
//  NexseedChat
//
//  Created by 星みちる on 2019/08/15.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var adressView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let user = Auth.auth().currentUser!
        do {
            //URLから写真取得
        }
        
    }
    

   

}
