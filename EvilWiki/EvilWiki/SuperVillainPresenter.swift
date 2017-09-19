//
//  SuperVillainPresenter.swift
//  EvilWiki
//
//  Created by Carlos Cortés Sánchez on 19/09/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import Foundation

class SuperVillainPresenter{
    
    var view: SuperVillainView!
    
    func viewReady() {
        view.enableSaveButton(enabled: false)
    }
}
