//
//  ViewController.swift
//  NewTapGuester
//
//  Created by Pankaj Sharma on 1/30/18.
//  Copyright © 2018 Pankaj Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var myimage: UIImageView!
    
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Some notes are added in ViewDidLoad Method
        
       picker.delegate = self
       picker.sourceType = .photoLibrary
        
        let tapGuester = UITapGestureRecognizer(target: self, action: #selector(tap))
        myimage.addGestureRecognizer(tapGuester)
    }
    @objc func tap() {
        present(picker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let pickedImage = info["sunny"] as! UIImage
        myimage.image = pickedImage
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // This will dismiss the controller
        // Another line has been added 
        dismiss(animated: true, completion: nil)
    }


}

