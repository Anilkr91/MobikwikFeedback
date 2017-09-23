//
//  Form2ViewController.swift
//  MobikwikFeedback
//
//  Created by admin on 21/09/17.
//  Copyright © 2017 Techximum. All rights reserved.
//

import UIKit

class Form2ViewController: BaseViewController {

    var cvc: Form2TableViewController!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cvc = childViewControllers[0] as! Form2TableViewController
        cvc.pvc = self
        // Do any additional setup after loading the view.
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
    @IBAction func AddCellButton(_ sender: Any) {
        
        cvc.plusOneEducation()
    }

}
