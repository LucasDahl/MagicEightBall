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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func selectBall() {
        
        // Get a radom number
        let randomNumber = Int(arc4random_uniform(4) + 1)
        
        // Change teh image
        eightBall.image = UIImage(named: "ball\(randomNumber)")
        
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

