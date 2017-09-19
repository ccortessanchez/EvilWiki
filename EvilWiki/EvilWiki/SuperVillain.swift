//
//  SuperVillain.swift
//  EvilWiki
//
//  Created by Carlos Cortés Sánchez on 19/09/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import Foundation

struct SuperVillain: CustomStringConvertible {
    
    var title: String
    var name: String
    var weapon: MegaWeapon? = nil
    
    var description: String {
        return "\(title) \(name)"
    }
    
    func attack() {
        weapon?.fire()
    }
}

extension SuperVillain {
    init(fullName: String) {
        let components = fullName.components(separatedBy: " ")
        title = components[0]
        name = components[1]
    }
}
