//
//  ViewController.swift
//  LEDBoard
//
//  Created by THEGREATJY on 2022/04/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var contentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentsLabel.textColor = .yellow
    }


}

