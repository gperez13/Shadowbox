//
//  ViewController.swift
//  iBeaconTutorial
//
//  Created by Giovanni Perez on 7/17/18.
//  Copyright © 2018 Giovanni Perez. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    let uuidgen = "CB2205FA-3323-4AA1-902E-E7B6AC0B07C5"
    let region = CLBeaconRegion(proximityUUID: NSUUID(uuidString: "CB2205FA-3323-4AA1-902E-E7B6AC0B07C5") as! UUID, identifier: "Testing Beacon")
    let color = UIColor(red: 38/255.0, green: 49/255.0, blue: 197/255.0, alpha: 1)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        locationManager.delegate = self
        if CLLocationManager.authorizationStatus() != CLAuthorizationStatus.authorizedWhenInUse {
            locationManager.requestWhenInUseAuthorization()
        }
        locationManager.startRangingBeacons(in: region)
        
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    func locationManager(_ manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion) {
        print(beacons)
        if (beacons.count <= 0) {
            print("seems legit")
            self.view.backgroundColor = color
            
        }
    }

    
    

}

