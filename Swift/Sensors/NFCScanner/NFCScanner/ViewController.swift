//
//  ViewController.swift
//  NFCScanner
//
//  Created by Giovanni Perez on 7/21/18.
//  Copyright © 2018 Giovanni Perez. All rights reserved.
//

import UIKit
import CoreNFC



var globalData = ""



class ViewController: UIViewController, CanReceive{
    @IBOutlet weak var chipLabel: UILabel!
    let chipString = globalData
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func setData(){
        
        chipLabel.text = globalData
        print("Function got called")
    }




    @IBAction func Scanner(_ sender: UIButton) {
        
        performSegue(withIdentifier: "ScanSegue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ScanSegue" {
            let secondVC = segue.destination as! SecondViewController
            
           
            secondVC.delegate = self
            
        }
    }
    

    
    func dataReceived(data: String) {
        print(data)
        chipLabel.text = data
    }
    

} // end of first class


