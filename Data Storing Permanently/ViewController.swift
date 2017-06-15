//
//  ViewController.swift
//  Data Storing Permanently
//
//  Created by Student08 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Implicit
    var strPhone = ""  // การเป็นช่องว่างถือว่ามีค่า ต่างจากค่า  null
    
    
    
    @IBOutlet weak var ShowPhoneLabel: UILabel!
    
    
    
    @IBOutlet weak var PhoneTextField: UITextField!
    
    
    
    @IBAction func SaveButton(_ sender: Any) {
        
     // Get Value Form TextField
        strPhone = PhoneTextField.text!
        print("strPhone ==> \(strPhone)")
        
        //Save to Permanently
        UserDefaults.standard.set(strPhone, forKey: "Phone")
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //การเรียกใช้
        
        let strPermanentPhone = UserDefaults.standard.object(forKey: "Phone")
        if let myPermanent = strPermanentPhone as? String  {
            print("Result from Permanent ==> \(myPermanent)")
            ShowPhoneLabel.text = myPermanent
            
            
            // project susesce
            
        }
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

