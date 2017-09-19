//
//  ViewController.swift
//  EvilWiki
//
//  Created by Carlos Cortés Sánchez on 19/09/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import UIKit

class SuperVillainEditViewController: UIViewController {
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    var presenter: SuperVillainPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewReady()
    }
    
    //MARK: Actions
    @IBAction func save(_ sender: Any) {
    }
    
    @IBAction func cancel(_ sender: Any) {
    }
}

