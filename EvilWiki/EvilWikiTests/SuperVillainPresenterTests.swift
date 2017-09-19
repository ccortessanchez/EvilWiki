//
//  SuperVillainPresenterTests.swift
//  EvilWiki
//
//  Created by Carlos Cortés Sánchez on 19/09/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import XCTest
@testable import EvilWiki

class SuperVillainPresenterTests: XCTestCase {
    
    var sut: SuperVillainPresenter!
    var view: SuperVillainViewSpy!
    
    override func setUp() {
        super.setUp()
        view = SuperVillainViewSpy()
        sut = SuperVillainPresenter()
        sut.view = view
    }
    
    override func tearDown() {
        sut = nil
        view = nil
        super.tearDown()
    }
    
    class SuperVillainViewSpy: SuperVillainView {
        var saveButtonEnabled = true
        
        func enableSaveButton(enabled: Bool) {
            saveButtonEnabled = enabled
        }
    }
    
    func testViewReadyDisablesSaveButton() {
        //Given
        
        //When
        sut.viewReady()
        
        //Then
        XCTAssertFalse(view.saveButtonEnabled)
    }
    
}
