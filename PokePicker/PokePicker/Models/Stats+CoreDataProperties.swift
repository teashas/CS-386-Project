//
//  Stats+CoreDataProperties.swift
//  PokePicker
//
//  Created by Chip Chairez on 7/24/22.
//
//

import Foundation
import CoreData


extension Stats {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Stats> {
        return NSFetchRequest<Stats>(entityName: "Stats")
    }

    @NSManaged public var hp: String?
    @NSManaged public var attack: String?
    @NSManaged public var defense: String?
    @NSManaged public var spAttack: String?
    @NSManaged public var spDefense: String?
    @NSManaged public var speed: String?
    @NSManaged public var pokemon: Pokemon?

}

extension Stats : Identifiable {

}
