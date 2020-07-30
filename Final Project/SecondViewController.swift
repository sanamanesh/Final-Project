//
//  SecondViewController.swift
//  Final Project
//
//  Created by Sana Manesh on 7/29/20.
//  Copyright © 2020 Sana Manesh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
   
    @IBOutlet weak var imageProfileButton: UIButton!
//    @IBAction func imageProfileButton(_ sender: Any) {
//        imageProfileButton.setImage(UIImage(systemName: "clearImage"), for: .normal)
//       }
    @IBOutlet weak var circleImage: UIImageView!
    
    @IBAction func imageProfileButton(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    @IBOutlet weak var displayImage: UIImageView!
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {   displayImage.image = selectedImage         }
        imagePicker.dismiss(animated: true, completion: nil)     }

    
//    func image;layer;.borderWidth = 1
//    image.layer.masksToBounds = false
//    image.layer.borderColor = UIColor.black.cgColor
//    image.layer.cornerRadius = image.frame.height/2
//    image.clipsToBounds = true
    
}




