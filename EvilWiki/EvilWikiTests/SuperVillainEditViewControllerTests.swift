//
//  SuperVillainEditViewControllerTests.swift
//  EvilWiki
//
//  Created by Carlos Cortés Sánchez on 19/09/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import XCTest
import UIKit
@testable import EvilWiki

class SuperVillainEditViewControllerTests: XCTestCase {
    
    var sut: SuperVillainEditViewController!
    var presenter: SuperVillainPresenterSpy!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: SuperVillainEditViewController.ID) as! SuperVillainEditViewController
        presenter = SuperVillainPresenterSpy()
        sut.presenter = presenter
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    class SuperVillainPresenterSpy: SuperVillainPresenter {
        var viewReadyCalled = false
        
        override func viewReady() {
            viewReadyCalled = true
        }
    }
    
    func testPresenterIsInformedWhenViewIsReady() {
        //Given
        
        //When
        //sut.viewDidLoad() --> DON'T DO IT
        _ = sut.view
        
        //Then
        XCTAssertTrue(presenter.viewReadyCalled)
    }
    
}
