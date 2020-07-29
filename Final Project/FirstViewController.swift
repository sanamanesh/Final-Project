//
//  FirstViewController.swift
//  Final Project
//
//  Created by Sana Manesh on 7/29/20.
//  Copyright © 2020 Sana Manesh. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

// BOOK 1
    @IBOutlet weak var booksOfMonth: UILabel!
    
    @IBOutlet weak var bookOneImage: UIImageView!
    
    @IBOutlet weak var bookTitleOne: UILabel!
    
    @IBOutlet weak var bookAuthorOne: UILabel!
    
    @IBOutlet weak var bookDescriptionOne: UITextView!
    
    // BOOK 1 BUTTONS
    @IBOutlet weak var book1LikeButton: UIButton!
    @IBAction func book1LikeButton(_ sender: Any) {
        book1LikeButton.setImage(UIImage(systemName: "hand.thumbsup.fill"), for: .normal)
    }
    @IBOutlet weak var book1DislikeButton: UIButton!
    @IBAction func book1DislikeButton(_ sender: Any) {
        book1DislikeButton.setImage(UIImage(systemName: "hand.thumbsdown.fill"), for: .normal)
    }
    
// BOOK 2
    @IBOutlet weak var bookTwoImage: UIImageView!

    @IBOutlet weak var bookTwoTitle: UILabel!
    
    @IBOutlet weak var bookAuthorTwo: UILabel!
    
    @IBOutlet weak var bookDescriptionTwo: UITextView!
    
    // BOOK 2 BUTTONS
    @IBOutlet weak var book2LikeButton: UIButton!
    @IBAction func book2LikeButton(_ sender: Any) {
        book2LikeButton.setImage(UIImage(systemName: "hand.thumbsup.fill"), for: .normal)
    }
    @IBOutlet weak var book2DislikeButton: UIButton!
    @IBAction func book2DislikeButton(_ sender: Any) {
        book2DislikeButton.setImage(UIImage(systemName: "hand.thumbsdown.fill"), for: .normal)
    }
    
// BOOK 3
    @IBOutlet weak var bookThreeImage: UIImageView!
    
    @IBOutlet weak var bookTitleThree: UILabel!
    
    @IBOutlet weak var bookAuthorThree: UILabel!
    
    @IBOutlet weak var bookDescriptionThree: UITextView!
    
    // BOOK 3 BUTTONS
    @IBOutlet weak var book3LikeButton: UIButton!
    @IBAction func book3LikeButton(_ sender: Any) {
        book3LikeButton.setImage(UIImage(systemName: "hand.thumbsup.fill"), for: .normal)
    }
    @IBOutlet weak var book3DislikeButton: UIButton!
    @IBAction func book3DislikeButton(_ sender: Any) {
        book3DislikeButton.setImage(UIImage(systemName: "hand.thumbsdown.fill"), for: .normal)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

