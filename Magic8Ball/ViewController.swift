//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Canh Duc Tran on 18/8/19.
//  Copyright © 2019 Chris Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballImagesArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var ballNumber = 0;
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        generateRandomBallImage()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        generateRandomBallImage()
    }
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        generateRandomBallImage()
    }
    
    /**
     * Generate a new random ball image
     */
    func generateRandomBallImage() {
        ballNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage.init(named: ballImagesArray[ballNumber])
    }
}

