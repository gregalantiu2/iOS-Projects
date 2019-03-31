//
//  PictureViewController.swift
//  PictaVate
//
//  Created by Greg Tiu on 2/9/19.
//  Copyright © 2019 Greg Tiu. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController {

    
    @IBOutlet var motivationPic1: UIImageView!
    var incomingImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        motivationPic1.image = incomingImage
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
