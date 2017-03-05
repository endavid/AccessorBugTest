//
//  AccessorBugTest.swift
//  AccessorBugTest
//
//  Created by David Gavilan on 9/11/15.
//  Copyright (c) 2015 David Gavilan. All rights reserved.
//

import Foundation

enum Level : Int {
    case
    bad     = 0,
    normal  = 1,
    good    = 2,
    superb  = 3
}

struct Attribute : CustomStringConvertible {
    var x : Level = .normal
    var y : Level = .normal
    var z : Level = .normal
    var w : Level = .normal
    
    var description : String {
        return "(\(x.rawValue), \(y.rawValue), \(z.rawValue), \(w.rawValue))"
    }
    
    func toString() -> String {
        return description
    }
}


var AccessorBugTestSingleton : AccessorBugTestClass!

class AccessorBugTestClass {
    
    let index       : Int
    var attributes  : [Attribute] = []
    var todaysAttributes : Attribute {
        get {
            let r = attributes[index]
            print("today: \(r)")
            return r
        }
    }
    var initialText : String = ""
    // selection for key
    var states  : [String:Int] = ["x": 0, "y": 0, "z": 0, "w": 0]
    var descriptions  : [String:Int] = ["a": 0, "b": 0, "c": 0, "d": 0]
    
  
    init() {
        index = 10
        for _ in 1...31 {
            let att = Attribute(x: .superb, y: .superb, z: .superb, w: .superb)
            attributes.append(att)
        }
        
        let attribs = todaysAttributes
        initialText = "\(attribs)"
        print("init: \(attribs), \(self.attributes[index])")
    }
    
}



