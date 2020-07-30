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
        self.hideKeyboardWhenTappedAround()
        displayImage.makeRounded()
        imageProfileButtonOutlet.isHidden = true

        // Do any additional setup after loading the view.
    }
   
  /*  @IBOutlet weak var imageProfileButton: UIButton!
    @IBAction func imageProfileButton(_ sender: Any) {
        imageProfileButton.setImage(UIImage(systemName: "clearImage"), for: .normal)
       }*/
    
    
    @IBOutlet weak var imageProfileButtonOutlet: UIButton!
    @IBAction func imageProfileButtonTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.view.tag = 102
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func imageProfileButton(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.view.tag = 101
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBOutlet weak var displayImage: UIImageView!
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            if imagePicker.view.tag == 100 {
                book2Image.image = selectedImage
            } else if imagePicker.view.tag == 102 {
                imageProfileButtonOutlet.setImage(selectedImage, for: .normal)
                imageProfileButtonOutlet.isEnabled = false
            } else {
                displayImage.image = selectedImage
            }
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
        
//    func image;layer;.borderWidth = 1
//    image.layer.masksToBounds = false
//    image.layer.borderColor = UIColor.black.cgColor
//    image.layer.cornerRadius = image.frame.height/2
//    image.clipsToBounds = true

    
    @IBOutlet weak var book1Image: UIImageView!
    
    @IBAction func book2ButtonTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.view.tag = 100
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBOutlet weak var book2Image: UIImageView!
    
    internal func imagePicker2Controller(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage2 = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            book2Image.image = selectedImage2
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    

    

}




