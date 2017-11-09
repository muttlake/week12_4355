//
//  ViewController.swift
//  blackAndWhiteImage
//
//  Created by Timothy M Shepard on 11/8/17.
//  Copyright © 2017 Timothy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewOriginal: UIImageView!
    @IBOutlet weak var imageViewBlack: UIImageView!
    
    @IBAction func convertButton(_ sender: Any) {
        imageViewBlack.image = convertToBlack(image: imageViewOriginal.image!)
    }
    
    func convertToBlack(image: UIImage) -> UIImage {
        
        let ciImage = CIImage.init(image: image)
        let blackImage = ciImage?.applyingFilter("CIColorControls", parameters: [kCIInputSaturationKey:0.0])
        return UIImage(ciImage: blackImage!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

