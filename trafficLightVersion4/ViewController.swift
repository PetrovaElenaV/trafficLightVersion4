//
//  ViewController.swift
//  trafficLightVersion4
//
//  Created by Elena Petrova on 26.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.layer.cornerRadius = redLabel.frame.width / 2
        yellowLabel.layer.cornerRadius = yellowLabel.frame.width / 2
        greenLabel.layer.cornerRadius = greenLabel.frame.width / 2
        
        redLabel.alpha = 0.3
        yellowLabel.alpha = 0.3
        greenLabel.alpha = 0.3
    }
    
    @IBAction func pushStartButton() {
   
        if redLabel.alpha != 1 && yellowLabel.alpha != 1 && greenLabel.alpha != 1 {
            startButton.setTitle("NEXT", for: .normal)
            redLabel.alpha = 1
            yellowLabel.alpha = 0.3
            greenLabel.alpha = 0.3
        } else if redLabel.alpha == 1 && yellowLabel.alpha != 1 && greenLabel.alpha != 1 {
            startButton.setTitle("NEXT", for: .normal)
            redLabel.alpha = 0.3
            yellowLabel.alpha = 1
            greenLabel.alpha = 0.3
        } else if redLabel.alpha != 1 && yellowLabel.alpha == 1 && greenLabel.alpha != 1{
            startButton.setTitle("NEXT", for: .normal)
            redLabel.alpha = 0.3
            yellowLabel.alpha = 0.3
            greenLabel.alpha = 1
        } else {
            startButton.setTitle("NEXT", for: .normal)
            redLabel.alpha = 1
            yellowLabel.alpha = 0.3
            greenLabel.alpha = 0.3
        }
        
    }
    
    
    
    
}

