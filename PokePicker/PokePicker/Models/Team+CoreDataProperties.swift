//
//  Team+CoreDataProperties.swift
//  PokePicker
//
//  Created by Chip Chairez on 7/24/22.
//
//

import Foundation
import CoreData


extension Team {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Team> {
        return NSFetchRequest<Team>(entityName: "Team")
    }

    @NSManaged public var name: String?
    @NSManaged public var members: NSOrderedSet?

}

// MARK: Generated accessors for members
extension Team {

    @objc(insertObject:inMembersAtIndex:)
    @NSManaged public func insertIntoMembers(_ value: Pokemon, at idx: Int)

    @objc(removeObjectFromMembersAtIndex:)
    @NSManaged public func removeFromMembers(at idx: Int)

    @objc(insertMembers:atIndexes:)
    @NSManaged public func insertIntoMembers(_ values: [Pokemon], at indexes: NSIndexSet)

    @objc(removeMembersAtIndexes:)
    @NSManaged public func removeFromMembers(at indexes: NSIndexSet)

    @objc(replaceObjectInMembersAtIndex:withObject:)
    @NSManaged public func replaceMembers(at idx: Int, with value: Pokemon)

    @objc(replaceMembersAtIndexes:withMembers:)
    @NSManaged public func replaceMembers(at indexes: NSIndexSet, with values: [Pokemon])

    @objc(addMembersObject:)
    @NSManaged public func addToMembers(_ value: Pokemon)

    @objc(removeMembersObject:)
    @NSManaged public func removeFromMembers(_ value: Pokemon)

    @objc(addMembers:)
    @NSManaged public func addToMembers(_ values: NSOrderedSet)

    @objc(removeMembers:)
    @NSManaged public func removeFromMembers(_ values: NSOrderedSet)

}

extension Team : Identifiable {

}
