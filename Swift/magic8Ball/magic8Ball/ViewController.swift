//
//  ViewController.swift
//  magic8Ball
//
//  Created by Giovanni Perez on 6/20/18.
//  Copyright © 2018 Giovanni Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var magicBall: UIImageView!
    
    var ballStatus : Int = 0
    var ballArray = ["ball1", "ball2", "ball3" ,"ball4", "ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func answerQuestion () {
    
    ballStatus = Int(arc4random_uniform(5))
    magicBall.image = UIImage(named: ballArray[ballStatus])
    }

    
    @IBAction func answerButton(_ sender: UIButton) {
        answerQuestion()
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        answerQuestion()
    }
    
    

}

