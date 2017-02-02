//
//  Contacts+CoreDataProperties.swift
//  CoreDataPratice1
//
//  Created by MacBook on 2/1/17.
//  Copyright © 2017 MacBook. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Contacts {

    @NSManaged var address: String?
    @NSManaged var phone: String?
    @NSManaged var name: String?

}
