//  DetailViewController.swift
//  ios101-project6-tumblr

import UIKit
import Nuke

class DetailViewController: UIViewController {
    var post: Post!
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setting the UI elements with the data
        textview.text = post.caption.trimHTMLTags()  // Assuming you have the trimHTMLTags() function
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: imageview)
        }

        // If you want to use the large title styles:
        self.title = "Detail"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
