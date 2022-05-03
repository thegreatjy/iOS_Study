//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by THEGREATJY on 2022/05/03.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject{
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == purpleButton{
            self.changeTextColorButton(color: .purple)
        } else if sender == yellowButton{
            self.changeTextColorButton(color: .yellow)
        } else{
            self.changeTextColorButton(color: .green)
        }
    }
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == orangeButton{
            self.changeBackgroundColorButton(color: .orange)
        } else if sender == blueButton{
            self.changeBackgroundColorButton(color: .blue)
        } else{
            self.changeBackgroundColorButton(color: .black)
        }
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
    }
    
    private func changeTextColorButton(color: UIColor) {
      self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.2
      self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.2
      self.greenButton.alpha = color == UIColor.green ? 1 : 0.2
    }

    private func changeBackgroundColorButton(color: UIColor) {
      self.blackButton.alpha = color == UIColor.black ? 1 : 0.2
      self.blueButton.alpha = color == UIColor.blue ? 1 : 0.2
      self.orangeButton.alpha = color == UIColor.orange ? 1 : 0.2
    }
}
