//
//  ScanViewTwo.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/25.
//

import UIKit

class ScanViewTwo: UIView {
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.yellow
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        
        
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(named: "close"), for: UIControl.State.normal)
        self.addSubview(button)
        button.backgroundColor = UIColor.red
        button.snp.makeConstraints { make in
            make.left.equalTo(self).offset(30)
            make.top.equalTo(self).offset(50)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        button.addTarget(self, action: #selector(returnScanView), for: UIControl.Event.touchUpInside)
         
    }
     
    
    @objc func returnScanView() {
        NotificationCenter.default.post(name: Notification.Name("ReturnToScanTwo"), object: nil)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
