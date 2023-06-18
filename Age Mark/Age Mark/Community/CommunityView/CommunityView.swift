//
//  CommunityView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit

import SnapKit
class CommunityView: UIView {
    //定义屏幕的宽和高
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.white
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        
        let labelWelocme = UILabel()
        labelWelocme.text = "Welcome to"
        self.addSubview(labelWelocme)
        labelWelocme.font = UIFont.systemFont(ofSize: 35)
        labelWelocme.textAlignment = NSTextAlignment.left
        labelWelocme.snp.makeConstraints { make in
            make.left.equalTo(self).offset(20)
            make.top.equalTo(self).offset(30)
            make.width.equalTo(300)
            make.height.equalTo(100)
        }
        
        
        
        let labelRuin = UILabel()
        labelRuin.text = "Ruined World"
        self.addSubview(labelRuin)
        labelRuin.font = UIFont.boldSystemFont(ofSize: 45)
        labelRuin.textAlignment = NSTextAlignment.left
        labelRuin.snp.makeConstraints { make in
            make.left.equalTo(labelWelocme).offset(0)
            make.top.equalTo(labelWelocme).offset(50)
            make.width.equalTo(300)
            make.height.equalTo(100)
        }
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
