//
//  ViewController.swift
//  trafficLightVersion4
//
//  Created by Elena Petrova on 26.07.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue   // просто для красоты )
        
        redLabel.alpha = 0.3
        yellowLabel.alpha = 0.3
        greenLabel.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        redLabel.layer.cornerRadius = redLabel.frame.width / 2
        yellowLabel.layer.cornerRadius = yellowLabel.frame.width / 2
        greenLabel.layer.cornerRadius = greenLabel.frame.width / 2
    }
    
    @IBAction func pushStartButton() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        if redLabel.alpha == 1 {
            redLabel.alpha = 0.3
            yellowLabel.alpha = 1
        } else if yellowLabel.alpha == 1 {
            yellowLabel.alpha = 0.3
            greenLabel.alpha = 1
        } else {
            greenLabel.alpha = 0.3
            redLabel.alpha = 1
        }
    }
}

        


