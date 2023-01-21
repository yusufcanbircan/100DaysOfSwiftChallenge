//
//  DetailViewController.swift
//  Project-1(Day16-18)
//
//  Created by Yusuf Can Bircan on 21.01.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never

        if let selectedImage {
            imageView.image = UIImage(named: selectedImage)
        }
    }
    
    /*override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }*/

}
