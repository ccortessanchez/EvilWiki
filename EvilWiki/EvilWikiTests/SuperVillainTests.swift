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
    
    var sut: SuperVillain!
    var weapon: WeaponSpy!
    
    override func setUp() {
        super.setUp()
        weapon = WeaponSpy()
        sut = SuperVillain.main(weapon: weapon)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        weapon = nil
        super.tearDown()
    }
    
    class WeaponSpy: MegaWeapon {
        var fireWasCalled = false
        
        func fire() {
            fireWasCalled = true
        }
        
        func verify() {
            XCTAssertTrue(fireWasCalled)
        }
    }
    
    func testDescriptionIsTitleSpaceName() {
        //Given
        
        //When
        let description = sut.description
        
        //Then
        XCTAssertEqual(TestData.mainFullName, description)
    }
    
    func testNameAndTitleAreExtractedFromFullName() {
        //Given
        
        //When
        
        
        //Then
        XCTAssertEqual(TestData.mainTitle, sut.title)
        XCTAssertEqual(TestData.mainName, sut.name)
    }
    
    func testAttackFiresWeapon() {
        //Given
        //let sut = SuperVillain.main(weapon: weapon)
        
        //Then
        sut.attack()
        
        //When
        weapon.verify()
    }
}
