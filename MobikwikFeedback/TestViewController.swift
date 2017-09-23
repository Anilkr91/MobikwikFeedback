//
//  TestViewController.swift
//  MobikwikFeedback
//
//  Created by admin on 23/09/17.
//  Copyright © 2017 Techximum. All rights reserved.
//

import UIKit
import CoreData

class TestViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var codeTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    
    @IBAction func saveData(_sender: Any) {
        let name = nameTextField.text!
        let code = codeTextField.text!
        
        
        if name.isEmpty  {
            print("empty please fill")
        } else if code.isEmpty {
            print("empty please fill")
        } else {
            let context = CoreDataUtils.getContext()
            let offline = Offline(context: context)
            
            offline.name = name
            offline.qrcode  = code

            do {
                try CoreDataUtils.getContext().save()
                //5
                print("saved sucessfully")
            } catch let error as NSError  {
                print("Could not save \(error.userInfo)")
            }
        }
    }
}
