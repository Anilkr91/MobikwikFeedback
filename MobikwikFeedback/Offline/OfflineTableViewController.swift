//
//  OfflineTableViewController.swift
//  MobikwikFeedback
//
//  Created by admin on 21/09/17.
//  Copyright © 2017 Techximum. All rights reserved.
//

import UIKit

class OfflineTableViewController: UITableViewController {
    
    var array  = [Feedback]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        array  = [Feedback(id: "1", qrCode: "qr123#", transactionId: "transc123!#"),
                      Feedback(id: "2", qrCode: "qr12343#", transactionId: "transc12335!%"),
                      Feedback(id: "3", qrCode: "qr1289%", transactionId: "transc123489@"),
                      Feedback(id: "4", qrCode: "qr0089%", transactionId: "transc0923189@")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return array.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! OfflineTableViewCell
        cell.info = array[indexPath.section]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
