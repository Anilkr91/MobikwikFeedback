//
//  OfflineTableViewController.swift
//  MobikwikFeedback
//
//  Created by admin on 21/09/17.
//  Copyright © 2017 Techximum. All rights reserved.
//

import UIKit

class OfflineTableViewController: UITableViewController {
    
     var person : [Offline] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       fetchRecord()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func fetchRecord() {
        //corepersistentContainer.viewContext
        let context = CoreDataUtils.getContext()
        
        do{
            person = try context.fetch(Offline.fetchRequest())
            tableView.reloadData();
        }catch let error as NSError  {
            print("Could not save \(error.userInfo)")
        }
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return person.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell  = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! OfflineTableViewCell
        cell.info = person[indexPath.section]
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
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            let context = CoreDataUtils.getContext()
            
            context.delete(person[indexPath.row])
            
            do {
                try context.save()
                person.remove(at: indexPath.row)
                tableView.reloadData()
                
                print("saved!")
            } catch let error as NSError  {
                print("Could not save \(error), \(error.userInfo)")
            }
        }
    }
    
}
