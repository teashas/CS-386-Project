//
//  Pokemon+CoreDataProperties.swift
//  PokePicker
//
//  Created by Chip Chairez on 7/23/22.
//
//

import Foundation
import CoreData


extension Pokemon {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pokemon> {
        return NSFetchRequest<Pokemon>(entityName: "Pokemon")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var spriteRef: String?
    @NSManaged public var team: Team?

}

extension Pokemon : Identifiable {

}
