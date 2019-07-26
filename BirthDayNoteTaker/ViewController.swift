//  ViewController.swift
//  BirthDayNoteTaker
//
//  Created by Yakup on 19.07.2019.
//  Copyright © 2019 Yakup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var editTextName: UITextField!
    
    @IBOutlet weak var editTextBirthDay: UITextField!
    
    @IBAction func buttonSaveUser(_ sender: Any) {
        UserDefaults.standard.set(editTextName.text, forKey: "name")
        UserDefaults.standard.set(editTextBirthDay.text, forKey: "birthday")
        textViewName.text = "Name: \(editTextName.text!) "
        textViewBirthDay.text = "Birthday: \(editTextBirthDay.text!)"
    }
    @IBOutlet weak var textViewName: UILabel!
    
    @IBOutlet weak var textViewBirthDay: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       textviewYaz()
    }
    
    func textviewYaz()
    {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirtday = UserDefaults.standard.object(forKey: "birthday")
        textViewName.text = storedName as? String
        textViewBirthDay.text = storedBirtday as? String
        
    }
    
    
    @IBAction func deleteClicked(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthDay = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil{
            
            UserDefaults.standard.removeObject(forKey: "name")
            
            
        }
        
        if (storedBirthDay as? String) != nil{
            
            UserDefaults.standard.removeObject(forKey: "birthday")
            
        }
       textviewYaz()
        
        
    }
    
    
}

