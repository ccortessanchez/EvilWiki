//
//  SuperVillainTests.swift
//  EvilWiki
//
//  Created by Carlos Cortés Sánchez on 19/09/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import XCTest
@testable import EvilWiki

class SuperVillainTests: XCTestCase {
    
    let mainTitle = "Dr."
    let mainName = "Octopus"
    let mainFullName = "Dr. Octopus"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    class WeaponSpy: MegaWeapon {
        var fireWasCalled = false
        
        func fire() {
            fireWasCalled = true
        }
    }
    
    func testDescriptionIsTitleSpaceName() {
        //Given
        let sut = SuperVillain(title: mainTitle, name: mainName, weapon: nil)
        
        //When
        let description = sut.description
        
        //Then
        XCTAssertEqual(mainFullName, description)
    }
    
    func testNameAndTitleAreExtractedFromFullName() {
        //Given
        let sut = SuperVillain(fullName: mainFullName)
        
        //When
        
        
        //Then
        XCTAssertEqual(mainTitle, sut.title)
        XCTAssertEqual(mainName, sut.name)
    }
    
    func testAttackFiresWeapon() {
        //Given
        let weapon = WeaponSpy()
        let sut = SuperVillain(title: mainTitle, name: mainName, weapon: weapon)
        
        //Then
        sut.attack()
        
        //When
        XCTAssertTrue(weapon.fireWasCalled)
    }
}
