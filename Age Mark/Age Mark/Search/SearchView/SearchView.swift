//
//  SearchView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit

import SnapKit
class SearchView: UIView {
    //定义屏幕的宽和高
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.white
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        
        let imageViewSecond = UIImageView()
        self.addSubview(imageViewSecond)
        imageViewSecond.image = UIImage(named: "Header-2")
        imageViewSecond.snp.makeConstraints { make in
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(60)
            make.width.equalTo(Width)
            make.height.equalTo(58)
        }
        
        let imageViewFirst = UIImageView()
        self.addSubview(imageViewFirst)
        imageViewFirst.image = UIImage(named: "Mask group-4_副本")
        imageViewFirst.snp.makeConstraints { make in
            make.left.equalTo(self).offset(20)
            make.top.equalTo(self).offset(70)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        
        let imageViewFour = UIImageView()
        self.addSubview(imageViewFour)
        imageViewFour.image = UIImage(named: "Notification-Icon")
        imageViewFour.snp.makeConstraints { make in
            make.left.equalTo(self).offset(280)
            make.top.equalTo(self).offset(75)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        
        let labelName = UILabel()
        self.addSubview(labelName)
        labelName.text = "Taylor Swift"
        labelName.font = UIFont.systemFont(ofSize:20)
        labelName.snp.makeConstraints { make in
            make.left.equalTo(imageViewFirst).offset(70)
            make.top.equalTo(imageViewFirst).offset(10)
            make.width.equalTo(150)
            make.height.equalTo(30)
        }
        
        
        let imageViewFive = UIImageView()
        self.addSubview(imageViewFive)
        imageViewFive.image = UIImage(named: "Avatar")
        imageViewFive.snp.makeConstraints { make in
            make.left.equalTo(imageViewFirst).offset(10)
            make.top.equalTo(imageViewFirst).offset(75)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        
        
        let labelNameTwo = UILabel()
        self.addSubview(labelNameTwo)
        labelNameTwo.text = "Thanh Pham"
        labelNameTwo.font = UIFont.systemFont(ofSize:18)
        labelNameTwo.snp.makeConstraints { make in
            make.left.equalTo(labelName).offset(0)
            make.top.equalTo(labelName).offset(70)
            make.width.equalTo(150)
            make.height.equalTo(30)
        }
        
        
        
        let labelAfter = UILabel()
        self.addSubview(labelAfter)
        labelAfter.text = "1 hour ago"
        labelAfter.textColor = UIColor.systemGray3
        labelAfter.font = UIFont.systemFont(ofSize:18)
        labelAfter.snp.makeConstraints { make in
            make.left.equalTo(self).offset(Width - 100)
            make.top.equalTo(labelNameTwo).offset(0)
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
        
        
        let imageViewSix = UIImageView()
        self.addSubview(imageViewSix)
        imageViewSix.image = UIImage(named: "Mask Group-4_副本2")
        imageViewSix.snp.makeConstraints { make in
            make.left.equalTo(self).offset(10)
            make.top.equalTo(labelNameTwo).offset(50)
            make.width.equalTo(Width - 20)
            make.height.equalTo((Width  - 20 ) / 375 * 236)
        }
        
        
        
        let imageViewSeven = UIImageView()
        self.addSubview(imageViewSeven)
        imageViewSeven.image = UIImage(named: "Component 7042")
        imageViewSeven.snp.makeConstraints { make in
            make.left.equalTo(self).offset(10)
            make.top.equalTo(imageViewSix).offset((Width  - 20 ) / 375 * 236)
            make.width.equalTo(Width - 20)
            make.height.equalTo((Width  - 20 ) / 375 * 45)
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
