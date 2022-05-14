//
//  RoundButton.swift
//  Calculator
//
//  Created by THEGREATJY on 2022/05/13.
//

import UIKit

//사용자가 원하는 속성을 만들어 줌
//@IBDesignable : 변경된 설정값을 스토리보드에 실시간으로 확인 가능하게 함
@IBDesignable
class RoundButton: UIButton {
    //IB Inspectable : storyboard에서도 isRound 속성값을 변경할 수 있게 해줌
    @IBInspectable var isRound: Bool = false{
        didSet{
            if isRound{
                self.layer.cornerRadius = self.frame.height/2
            }
        }
    }
}
