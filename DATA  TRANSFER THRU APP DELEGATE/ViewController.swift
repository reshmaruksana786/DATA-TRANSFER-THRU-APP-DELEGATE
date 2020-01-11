//
//  ViewController.swift
//  DATA  TRANSFER THRU APP DELEGATE
//
//  Created by Syed.Reshma Ruksana on 26/11/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // creation of label
    
    @IBOutlet weak var label1: UILabel!
    
    
    
    var appDelegateRef:AppDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        label1.numberOfLines = 0

        appDelegateRef=UIApplication.shared.delegate as! AppDelegate
        // Do any additional setup after loading the view, typically from a nib.
    }

//  Contact Button function
    @IBAction func onContactBtnTap(_ sender: UIButton) {
        
        let target = self.storyboard?.instantiateViewController(withIdentifier: "secondVC")
        
        
        self.present(target!, animated: true, completion: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        var completeString = String()
        
        for x in appDelegateRef.dictionary
        {
            completeString += x["name"]! + "\n" + x["mobile"]! + "\n\n"
        }
        
        
        label1.text! = completeString
    }
    
}

