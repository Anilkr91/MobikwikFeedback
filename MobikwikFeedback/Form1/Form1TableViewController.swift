//
//  Form1TableViewController.swift
//  MobikwikFeedback
//
//  Created by admin on 21/09/17.
//  Copyright © 2017 Techximum. All rights reserved.
//

import UIKit

class Form1TableViewController: BaseTableViewController {

    //Properties
    @IBOutlet weak var qrCodeTextField: UITextField!
    @IBOutlet weak var petrolPumpTextField: UITextField!
    @IBOutlet weak var transactionIDTextField: UITextField!
    @IBOutlet weak var managerNameTextField: UITextField!
    @IBOutlet weak var managerNumberTextField: UITextField!
    @IBOutlet weak var mobikwikInstalledTextField: UITextField!
    @IBOutlet weak var receivingSmsTextField: UITextField!
    @IBOutlet weak var dashBoardWorkingTextField: UITextField!
    @IBOutlet weak var usersOffersTextField: UITextField!
    @IBOutlet weak var merchantOffersTextField: UITextField!
    @IBOutlet weak var accountManagerTextField: UITextField!
    @IBOutlet weak var paytmSalesTextField: UITextField!
    @IBOutlet weak var smallQRTextField: UITextField!
    @IBOutlet weak var a3QRCodeTextField: UITextField!
    @IBOutlet weak var ironStandTextField: UITextField!
    @IBOutlet weak var offersPostersTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func transactionButtonTapped(_ sender: Any) {
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.selectionStyle = .none
    }
}
