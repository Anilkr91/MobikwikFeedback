//
//  CoreData+Helper.swift
//  CodeBrewMachineTest
//
//  Created by Anil Kumar on 2/22/17.
//  Copyright © 2017 Anil Kumar. All rights reserved.
//

import UIKit
import CoreData

class CoreDataUtils {
    
    class func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        return managedContext
    }
    
//    class func readEntity(entityName: String) -> [Any] {
//        
//        var results : [Any] = []
//        
//        do {
//            let context = CoreDataUtils.getContext()
//            
//            results = try context.fetch(Offline.fetchRequest())
//        }
//        catch {
//            let fetchError = error as NSError
//            print(fetchError)
//        }
//    return results
//    }
}
