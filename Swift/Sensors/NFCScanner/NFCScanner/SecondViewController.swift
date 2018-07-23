//
//  SecondViewController.swift
//  NFCScanner
//
//  Created by Giovanni Perez on 7/23/18.
//  Copyright © 2018 Giovanni Perez. All rights reserved.
//

import UIKit
import CoreNFC

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {
    var data = ""
    
    
    var delegate : CanReceive?
    
    
    let nfcReader = NFCReader()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nfcReader.beginSession()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func updateData() {
        data = globalData
    }
    
    @IBAction func Next(_ sender: UIButton) {
        print("button is pressed")
        updateData()
        delegate?.dataReceived(data: data)
        dismiss(animated: true, completion: nil)
    }

    
    
    
    
    

}


class NFCReader: NSObject, NFCNDEFReaderSessionDelegate {
    
    
    func passData() {
        
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        for message in messages {
            for record in message.records {
                
                print("New Record Found:")
                print(record.identifier)
                print(record.payload)
                print(record.type)
                print(record.typeNameFormat)
                print(record)
                print(record.payload)
                
                let str = String.init(data: record.payload.advanced(by: 3), encoding: .utf8)!
                globalData = str
                print(globalData)
                
                
                
                
                
                
                
            }
        }
    }
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
        print("NFC NDEF Invalidated")
        print("\(error)")
    }
    func beginSession() {
        let session = NFCNDEFReaderSession(delegate: self, queue: nil, invalidateAfterFirstRead: true)
        session.begin()
    }
    
}


