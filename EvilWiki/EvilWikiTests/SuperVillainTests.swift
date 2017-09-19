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
        let sut = SuperVillain.init(title: "Dr.", name: "Octopus", weapon: nil)
        
        //When
        let description = sut.description
        
        //Then
        XCTAssertEqual("Dr. Octopus", description)
    }
    
    func testNameAndTitleAreExtractedFromFullName() {
        //Given
        let sut = SuperVillain.init(fullName: "Dr. Octopus")
        
        //When
        
        
        //Then
        XCTAssertEqual("Dr.", sut.title)
        XCTAssertEqual("Octopus", sut.name)
    }
    
    func testAttackFiresWeapon() {
        //Given
        let weapon = WeaponSpy()
        let sut = SuperVillain.init(title: "Dr.", name: "Octopus", weapon: weapon)
        
        //Then
        sut.attack()
        
        //When
        XCTAssertTrue(weapon.fireWasCalled)
    }
}
