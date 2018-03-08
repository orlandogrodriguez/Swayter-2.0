//
//  SwayterLog.swift
//  Swayter 2.0
//
//  Created by Orlando G. Rodriguez on 3/8/18.
//  Copyright © 2018 Worly Software. All rights reserved.
//

import Foundation

public struct SwayterLog {
    init() { }
    
    func log(level: Level, str: String) {
        print("[\(level)] : \(str)")
    }
    
    func d(str: String) {
        self.log(level: .Debug, str: str)
    }
    
    func w(str: String) {
        self.log(level: .Warning, str: str)
    }
    
    func e(str: String) {
        self.log(level: .Error, str: str)
    }
}

enum Level {
    case Debug, Warning, Error
}
