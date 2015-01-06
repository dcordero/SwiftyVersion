//
//  Version.swift
//  Version
//
//  Created by David Cordero on 23/09/14.
//  Copyright (c) 2014 David Cordero. All rights reserved.
//

import Foundation

class Version: NSObject, Equatable, NSCoding, Printable {
    let components : Array<String>
    
    init (_ version: String) {
        self.init(version, usingSeparator: ".")
    }
    
    init (_ version: String, usingSeparator separator: String) {
        components = version.componentsSeparatedByString(separator)
    }
    
    required init(coder aDecoder: NSCoder) {
        components = aDecoder.decodeObjectForKey("components") as Array<String>
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(components, forKey: "components")
    }
    
    override var description: String {
        return ".".join(components)
    }
    
    func compare (otherVersion: Version) -> NSComparisonResult {
        
        let length = max(self.components.count, otherVersion.components.count)
        for index in 0..<length {
            let itemVersion : String = (self.components.count > index) ? self.components[index] : "0"
            let otherItemVersion : String = (otherVersion.components.count > index) ?otherVersion.components[index] : "0"
            
            let resultCompare = itemVersion.compare(otherItemVersion)
            if (resultCompare != .OrderedSame) {
                return resultCompare
            }
        }
        return .OrderedSame
    }
}

func == (left: Version, right: Version) -> Bool {
    return (left.compare(right) == .OrderedSame)
}

func < (left: Version, right: Version) -> Bool {
    return (left.compare(right) == .OrderedAscending)
}

func > (left: Version, right: Version) -> Bool {
    return (left.compare(right) == .OrderedDescending)
}

func <= (left: Version, right: Version) -> Bool {
    return !(left > right)
}

func >= (left: Version, right: Version) -> Bool {
    return !(left < right)
}

