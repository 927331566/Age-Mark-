//
//  ScanView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit

class ScanView: UIView {
    //定义屏幕的宽和高
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.yellow
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
