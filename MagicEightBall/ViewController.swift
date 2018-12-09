//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Lucas Dahl on 12/8/18.
//  Copyright © 2018 Lucas Dahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var eightBall: UIImageView!
    
    // Properties
    var oldRandomNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func selectBall() {
        
        // Method properties
        var randomNumber = Int(arc4random_uniform(5) + 1)
        
        // Change the image
        if randomNumber != oldRandomNumber {
            
            // Pcik the new ball based on the random number
            eightBall.image = UIImage(named: "ball\(randomNumber)")

            // Set the new random number to the old random number
            oldRandomNumber = randomNumber
            
        } else if oldRandomNumber == 1 && oldRandomNumber == randomNumber {
            
            // Add one to the random number so it is not out of range
            randomNumber += 1

            eightBall.image = UIImage(named: "ball\(randomNumber)")
            
        } else if oldRandomNumber == 5 && oldRandomNumber == randomNumber {
            
            // Subtract one to the random number so it is not out of range
            randomNumber -= 1
      
            eightBall.image = UIImage(named: "ball\(randomNumber)")
            
        }
        
        
        
        
    }

    
    //==================
    // MARK: - Shake ball
    //==================
    
    @IBAction func askTapped(_ sender: UIButton) {
        
        // Select the new ball image
        selectBall()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        // Select the new ball image
        selectBall()
        
    }
    
} // End class

