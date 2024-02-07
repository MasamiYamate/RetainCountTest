//
//  ViewController.swift
//  RetainCountTest
//
//  Created by Masami on 2024/02/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DataFactory.shared.checkCount()
    }

}

