//
//  Form2TableViewController.swift
//  MobikwikFeedback
//
//  Created by admin on 21/09/17.
//  Copyright © 2017 Techximum. All rights reserved.
//

import UIKit

class Form2TableViewController: BaseTableViewController {
    
    weak var pvc: Form2ViewController?
    var array = [Form2]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        plusOneEducation()
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Form2TableViewCell
        
        cell.nameTextField.text = array[indexPath.section].name
        cell.numberTextField.text = array[indexPath.section].number
        
        // Configure the cell...
        
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
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.selectionStyle = .none
    }
        
    func plusOneEducation() {
        array.append(Form2(name: "", number: ""))
        self.tableView.beginUpdates()
        tableView.insertSections(IndexSet(integer: array.count-1), with: .automatic)
        self.tableView.endUpdates()
        self.tableView.scrollToRow(at:  IndexPath(row: 0, section: array.count-1), at: .bottom, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("delete")
            array.remove(at: indexPath.section)
            self.tableView.beginUpdates()
            tableView.deleteSections(IndexSet(integer: indexPath.section), with: .automatic)
            self.tableView.endUpdates()
        }
    }
    
}
