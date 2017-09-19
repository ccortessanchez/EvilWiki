//
//  ViewController.swift
//  EvilWiki
//
//  Created by Carlos Cortés Sánchez on 19/09/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import UIKit

class SuperVillainEditViewController: UIViewController, SuperVillainView {
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    var presenter: SuperVillainPresenter?
    
    static let ID = "SuperVillainEditViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewReady()
    }
    
    //MARK: Actions
    @IBAction func save(_ sender: UIBarButtonItem) {
    }
    
    func enableSaveButton(enabled: Bool) {
        saveButton.isEnabled = enabled
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
    }
}

