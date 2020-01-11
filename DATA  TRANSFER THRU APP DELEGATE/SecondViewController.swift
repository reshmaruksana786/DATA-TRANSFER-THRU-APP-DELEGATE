//
//  SecondViewController.swift
//  DATA  TRANSFER THRU APP DELEGATE
//
//  Created by Syed.Reshma Ruksana on 26/11/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //creation of labels
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var mobileNumberTF: UITextField!
    
    var appDelegateRef:AppDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegateRef = UIApplication.shared.delegate as! AppDelegate


        // Do any additional setup after loading the view.
    }
    
    
    //  Submit Button function

    @IBAction func onSubmitBtnTap(_ sender: UIButton) {
        
        
        var value = [String:String]()
        
        value["name"] = nameTF.text!
        
        value["mobile"] = mobileNumberTF.text!
        
        
        
        appDelegateRef.dictionary.append(value)
        
        
        
        dismiss(animated: true, completion: nil)
    }
    
    

}
