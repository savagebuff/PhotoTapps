//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Dinar Garaev on 15.09.2021.
//

import UIKit

class PhotoViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        
        shareController.completionWithItemsHandler = {_, bool, _, _ in
            if bool {
                print("Успешно!")
            }
        }
        present(shareController, animated: true, completion: nil)
    }
    
}
