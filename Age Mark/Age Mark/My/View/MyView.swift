//
//  MyView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit
import SnapKit

class MyView: UIView {
    
    
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
//        label.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        labelFront.text = "个人信息"
        labelFront.font = UIFont.boldSystemFont(ofSize: 24)
        labelFront.textAlignment = NSTextAlignment.center
        labelFront.snp.makeConstraints { make in
            make.left.equalTo(self).offset((Width - 100) / 2)
            make.top.equalTo(self).offset(50)
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        
        
        
        
        
        let imageViewReturn = UIImageView()
        self.addSubview(imageViewReturn)
        imageViewReturn.image = UIImage(named: "Back-Navs")
        imageViewReturn.snp.makeConstraints { make in
            make.left.equalTo(self).offset(30)
            make.top.equalTo(labelFront).offset(5)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        
        let labelMore = UILabel()
        self.addSubview(labelMore)
//        label.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        labelMore.text = "···"
        labelMore.font = UIFont.boldSystemFont(ofSize: 30)
        labelMore.textAlignment = NSTextAlignment.center
        labelMore.snp.makeConstraints { make in
            make.left.equalTo(self).offset(Width - 100)
            make.top.equalTo(labelFront).offset(0)
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        
        let buttonImage = UIButton(type: UIButton.ButtonType.custom)
        buttonImage.setImage(UIImage(named: "MyViewOne"), for: UIControl.State.normal)
        self.addSubview(buttonImage)
        buttonImage.snp.makeConstraints { make in
            make.left.equalTo(self).offset(30)
            make.top.equalTo(labelFront).offset(60)
            make.width.equalTo(80)
            make.height.equalTo(80)
        }
        buttonImage.layer.cornerRadius = 40
        buttonImage.layer.masksToBounds = true



        let labelName = UILabel()
        self.addSubview(labelName)
        labelName.text = "Stefani Wong"
        labelName.font = UIFont.boldSystemFont(ofSize: 15)
        labelName.snp.makeConstraints { make in
            make.left.equalTo(buttonImage).offset(100)
            make.top.equalTo(buttonImage).offset(0)
            make.width.equalTo(150)
            make.height.equalTo(40)
        }


        let labelEdit = UILabel()
        self.addSubview(labelEdit)
        labelEdit.text = "编辑"
        labelEdit.textColor = UIColor.white
        labelEdit.textAlignment = NSTextAlignment.center
        labelEdit.font = UIFont.boldSystemFont(ofSize: 18)
        labelEdit.backgroundColor = UIColor(red: 160 / 255, green: 185 / 255, blue: 249 / 255, alpha: 1)
        labelEdit.snp.makeConstraints { make in
            make.left.equalTo(self).offset(Width - 100)
            make.top.equalTo(buttonImage).offset(10)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }
        labelEdit.layer.cornerRadius = 15
        labelEdit.layer.masksToBounds = true


        let labelTriva = UILabel()
        self.addSubview(labelTriva)
        labelTriva.text = "旅行"
        labelTriva.textColor = UIColor(red: 160 / 255, green: 185 / 255, blue: 249 / 255, alpha: 1)
        labelTriva.textAlignment = NSTextAlignment.center
        labelTriva.font = UIFont.boldSystemFont(ofSize: 15)
        labelTriva.snp.makeConstraints { make in
            make.left.equalTo(self).offset(50)
            make.top.equalTo(buttonImage).offset(100)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }
        let labelTrivaTwo = UILabel()
        self.addSubview(labelTrivaTwo)
        labelTrivaTwo.text = "记录"
        labelTrivaTwo.textAlignment = NSTextAlignment.center
        labelTrivaTwo.font = UIFont.boldSystemFont(ofSize: 15)
        labelTrivaTwo.snp.makeConstraints { make in
            make.left.equalTo(labelTriva).offset(0)
            make.top.equalTo(labelTriva).offset(40)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }




        let labelRuins = UILabel()
        self.addSubview(labelRuins)
        labelRuins.text = "4座废墟"
        labelRuins.textColor = UIColor(red: 160 / 255, green: 185 / 255, blue: 249 / 255, alpha: 1)
        labelRuins.textAlignment = NSTextAlignment.center
        labelRuins.font = UIFont.boldSystemFont(ofSize: 15)
        labelRuins.snp.makeConstraints { make in
            make.left.equalTo(self).offset(60 + (Width - 100) / 3)
            make.top.equalTo(buttonImage).offset(100)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }
        let labelTRuinsTwo = UILabel()
        self.addSubview(labelTRuinsTwo)
        labelTRuinsTwo.text = "打卡"
        labelTRuinsTwo.textAlignment = NSTextAlignment.center
        labelTRuinsTwo.font = UIFont.boldSystemFont(ofSize: 15)
        labelTRuinsTwo.snp.makeConstraints { make in
            make.left.equalTo(labelRuins).offset(0)
            make.top.equalTo(labelRuins).offset(40)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }




        let labelCountry = UILabel()
        self.addSubview(labelCountry)
        labelCountry.text = "22个国家"
        labelCountry.textColor = UIColor(red: 160 / 255, green: 185 / 255, blue: 249 / 255, alpha: 1)
        labelCountry.textAlignment = NSTextAlignment.center
        labelCountry.font = UIFont.boldSystemFont(ofSize: 15)
        labelCountry.snp.makeConstraints { make in
            make.left.equalTo(self).offset(70 + (Width - 100) / 3 * 2)
            make.top.equalTo(buttonImage).offset(100)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }
        let labelCountryTwo = UILabel()
        self.addSubview(labelCountryTwo)
        labelCountryTwo.text = "去过"
        labelCountryTwo.textAlignment = NSTextAlignment.center
        labelCountryTwo.font = UIFont.boldSystemFont(ofSize: 15)
        labelCountryTwo.snp.makeConstraints { make in
            make.left.equalTo(labelCountry).offset(0)
            make.top.equalTo(labelCountry).offset(40)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }



        let labelAccount = UILabel()
        self.addSubview(labelAccount)
        labelAccount.text = "Account"
        labelAccount.textAlignment = NSTextAlignment.left
        labelAccount.font = UIFont.boldSystemFont(ofSize: 20)
        labelAccount.snp.makeConstraints { make in
            make.left.equalTo(buttonImage).offset(20)
            make.top.equalTo(labelTriva).offset(100)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }

        let labelInformation = UILabel()
        self.addSubview(labelInformation)
        labelInformation.text = "个人信息"
        labelInformation.textColor = UIColor.gray
        labelInformation.textAlignment = NSTextAlignment.left
        labelInformation.font = UIFont.boldSystemFont(ofSize: 15)
        labelInformation.snp.makeConstraints { make in
            make.left.equalTo(labelAccount).offset(40)
            make.top.equalTo(labelAccount).offset(50)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }

        let imageViewInformation = UIImageView()
        self.addSubview(imageViewInformation)
        imageViewInformation.image = UIImage(named: "Icon-Profile")
        imageViewInformation.snp.makeConstraints { make in
            make.left.equalTo(labelInformation).offset(-60)
            make.top.equalTo(labelInformation).offset(0)
            make.width.equalTo(25)
            make.height.equalTo(25)
        }
        
        
        let labelSuccess = UILabel()
        self.addSubview(labelSuccess)
        labelSuccess.text = "我的成就"
        labelSuccess.textColor = UIColor.gray
        labelSuccess.textAlignment = NSTextAlignment.left
        labelSuccess.font = UIFont.boldSystemFont(ofSize: 15)
        labelSuccess.snp.makeConstraints { make in
            make.left.equalTo(labelInformation).offset(0)
            make.top.equalTo(labelInformation).offset(50)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }



        let labelActivy = UILabel()
        self.addSubview(labelActivy)
        labelActivy.text = "活动记录"
        labelActivy.textColor = UIColor.gray
        labelActivy.textAlignment = NSTextAlignment.left
        labelActivy.font = UIFont.boldSystemFont(ofSize: 15)
        labelActivy.snp.makeConstraints { make in
            make.left.equalTo(labelSuccess).offset(0)
            make.top.equalTo(labelSuccess).offset(50)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }



        let labelPlan = UILabel()
        self.addSubview(labelPlan)
        labelPlan.text = "旅行计划"
        labelPlan.textColor = UIColor.gray
        labelPlan.textAlignment = NSTextAlignment.left
        labelPlan.font = UIFont.boldSystemFont(ofSize: 15)
        labelPlan.snp.makeConstraints { make in
            make.left.equalTo(labelActivy).offset(0)
            make.top.equalTo(labelActivy).offset(50)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }




        let labelNotification = UILabel()
        self.addSubview(labelNotification)
        labelNotification.text = "Notification"
        labelNotification.textAlignment = NSTextAlignment.left
        labelNotification.font = UIFont.boldSystemFont(ofSize: 20)
        labelNotification.snp.makeConstraints { make in
            make.left.equalTo(labelAccount).offset(0)
            make.top.equalTo(labelPlan).offset(50)
            make.width.equalTo(150)
            make.height.equalTo(30)
        }
        let labelReminder = UILabel()
        self.addSubview(labelReminder)
        labelReminder.text = "消息提醒"
        labelReminder.textColor = UIColor.gray
        labelReminder.textAlignment = NSTextAlignment.left
        labelReminder.font = UIFont.boldSystemFont(ofSize: 15)
        labelReminder.snp.makeConstraints { make in
            make.left.equalTo(labelNotification).offset(40)
            make.top.equalTo(labelNotification).offset(50)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }

        let switchFirst = UISwitch()
        self.addSubview(switchFirst)
        switchFirst.snp.makeConstraints { make in
            make.left.equalTo(self).offset(Width - 100)
            make.top.equalTo(labelReminder).offset(0)
            make.width.equalTo(60)
            make.height.equalTo(20)
        }
        switchFirst.onTintColor = UIColor(red: 201 / 255, green: 156 / 255, blue: 217 / 255, alpha: 1)


        let labelOther = UILabel()
        self.addSubview(labelOther)
        labelOther.text = "Other"
        labelOther.textAlignment = NSTextAlignment.left
        labelOther.font = UIFont.boldSystemFont(ofSize: 20)
        labelOther.snp.makeConstraints { make in
            make.left.equalTo(labelAccount).offset(0)
            make.top.equalTo(labelReminder).offset(50)
            make.width.equalTo(150)
            make.height.equalTo(30)
        }
        let labelRelation = UILabel()
        self.addSubview(labelRelation)
        labelRelation.text = "联系我们"
        labelRelation.textColor = UIColor.gray
        labelRelation.textAlignment = NSTextAlignment.left
        labelRelation.font = UIFont.boldSystemFont(ofSize: 15)
        labelRelation.snp.makeConstraints { make in
            make.left.equalTo(labelOther).offset(40)
            make.top.equalTo(labelOther).offset(50)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }
        let labelPrivacy = UILabel()
        self.addSubview(labelPrivacy)
        labelPrivacy.text = "个人隐私"
        labelPrivacy.textColor = UIColor.gray
        labelPrivacy.textAlignment = NSTextAlignment.left
        labelPrivacy.font = UIFont.boldSystemFont(ofSize: 15)
        labelPrivacy.snp.makeConstraints { make in
            make.left.equalTo(labelRelation).offset(0)
            make.top.equalTo(labelRelation).offset(50)
            make.width.equalTo(80)
            make.height.equalTo(30)
        }
        let labelSetting = UILabel()
        self.addSubview(labelSetting)
        labelSetting.text = "设置"
        labelSetting.textColor = UIColor.gray
        labelSetting.textAlignment = NSTextAlignment.left
        labelSetting.font = UIFont.boldSystemFont(ofSize: 15)
        labelSetting.snp.makeConstraints { make in
            make.left.equalTo(labelPrivacy).offset(0)
            make.top.equalTo(labelPrivacy).offset(50)
            make.width.equalTo(80)
            make.height.equalTo(30)
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
