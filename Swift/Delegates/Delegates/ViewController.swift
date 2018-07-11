//
//  ViewController.swift
//  Delegates
//
//  Created by Giovanni Perez on 7/11/18.
//  Copyright © 2018 Giovanni Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressButton(_ sender: Any) {
        performSegue(withIdentifier: "secondScreenNavigation", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondScreenNavigation" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.recievedText = textField.text!
        }
    }
    
}

