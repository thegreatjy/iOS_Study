//
//  SeguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by THEGREATJY on 2022/04/28.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func BackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
