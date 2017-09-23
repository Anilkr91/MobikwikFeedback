//
//  Offline+CoreDataProperties.swift
//  MobikwikFeedback
//
//  Created by admin on 23/09/17.
//  Copyright © 2017 Techximum. All rights reserved.
//

import Foundation
import CoreData


extension Offline {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Offline> {
        return NSFetchRequest<Offline>(entityName: "Offline")
    }

    @NSManaged public var name: String?
    @NSManaged public var qrcode: String?

}
