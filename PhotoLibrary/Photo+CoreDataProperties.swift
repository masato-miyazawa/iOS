//
//  Photo+CoreDataProperties.swift
//  PhotoLibrary
//
//  Created by Derrick Park on 2017-07-24.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import Foundation
import CoreData


extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo")
    }

    @NSManaged public var dateTaken: NSDate?
    @NSManaged public var photoID: String?
    @NSManaged public var remoteURL: NSURL?
    @NSManaged public var title: String?

}
