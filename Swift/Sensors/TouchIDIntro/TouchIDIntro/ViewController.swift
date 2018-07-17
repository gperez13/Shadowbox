//
//  ViewController.swift
//  TouchIDIntro
//
//  Created by Giovanni Perez on 7/17/18.
//  Copyright © 2018 Giovanni Perez. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        authenticateUsingTouchID()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func authenticateUsingTouchID() {
        let authContext = LAContext()
        let authReason = "Please give me the creds"
        var authError: NSError?
        
        
        if authContext.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &authError){
            authContext.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: authReason, reply: { (success, error) -> Void in
                if success{
                    print("thats yer thumb!")
                }
                else{
                    print("try again plz")
                }
                
                
            })
        } else {
            print(authError?.localizedDescription)
            
            
        }
    }
    



}


