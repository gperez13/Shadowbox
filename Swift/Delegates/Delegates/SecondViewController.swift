//
//  SecondViewController.swift
//  Delegates
//
//  Created by Giovanni Perez on 7/11/18.
//  Copyright © 2018 Giovanni Perez. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var recievedText : String? 

    override func viewDidLoad() {
        super.viewDidLoad()

        secondLabel.text = recievedText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var secondLabel: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
