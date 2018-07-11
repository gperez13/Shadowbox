//
//  ViewController.swift
//  Delegates
//
//  Created by Giovanni Perez on 7/11/18.
//  Copyright © 2018 Giovanni Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
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
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            secondVC.delegate = self
            
        }
    }
    
    @IBAction func changeColor(_ sender: Any) {
        view.backgroundColor = UIColor.cyan
    }
    
    
    func dataReceived(data: String) {
        label.text = data
    }
    
    
}

