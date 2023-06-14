//
//  RoundView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit
import SnapKit
class RoundView: UIView {
    //定义屏幕的宽和高
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.white
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        
        //初始化上边的label
        let labelFront = UILabel()
        self.addSubview(labelFront)
        labelFront.text = "系列讲座"
        labelFront.font = UIFont.boldSystemFont(ofSize: 20)
        labelFront.textAlignment = NSTextAlignment.left
        labelFront.snp.makeConstraints { make in
            make.left.equalTo(self).offset(20)
            make.top.equalTo(self).offset(70)
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        
        let imageView = UIImageView()
        self.addSubview(imageView)
        imageView.image = UIImage(named: "RoundViewFirst")
        imageView.snp.makeConstraints { make in
            make.left.equalTo(labelFront).offset(0)
            make.top.equalTo(labelFront).offset(60)
            make.width.equalTo(Width - 40)
            make.height.equalTo((Width - 40) / 333 * 151)
        }
        
        
        
        let labelComments = UILabel()
        self.addSubview(labelComments)
        labelComments.text = "推荐打卡"
        labelComments.font = UIFont.boldSystemFont(ofSize: 20)
        labelComments.textAlignment = NSTextAlignment.left
        labelComments.snp.makeConstraints { make in
            make.left.equalTo(imageView).offset(0)
            make.top.equalTo(imageView).offset(20 + (Width - 40) / 333 * 151)
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        
        
        let labelSeeall = UILabel()
        self.addSubview(labelSeeall)
        labelSeeall.text = "See all"
        labelSeeall.font = UIFont.systemFont(ofSize: 20)
        labelSeeall.textColor = UIColor.gray
        labelSeeall.textAlignment = NSTextAlignment.left
        labelSeeall.snp.makeConstraints { make in
            make.left.equalTo(self).offset(Width - 80)
            make.top.equalTo(labelComments).offset(0)
            make.width.equalTo(80)
            make.height.equalTo(40)
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
