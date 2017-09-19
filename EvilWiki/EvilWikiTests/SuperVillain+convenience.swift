//
//  SuperVillain+convenience.swift
//  EvilWiki
//
//  Created by Carlos Cortés Sánchez on 19/09/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import Foundation
@testable import EvilWiki

extension SuperVillain {
    
    static func main(weapon: MegaWeapon?) -> SuperVillain {
        return SuperVillain.init(title: TestData.mainTitle, name: TestData.mainName, weapon: weapon)
    }
}
