//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by THEGREATJY on 2022/04/28.
//

import UIKit

protocol SendDataDelegate: AnyObject{
    func SendData(name: String)
}

class CodePresentViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    //delegate변수는 weak
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.SendData(name: "Gunter _ codePresent")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
