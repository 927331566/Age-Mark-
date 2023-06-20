//
//  SearchView.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit

import SnapKit
class SearchView: UIView {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "11111", for: indexPath)
//        cell.backgroundColor = UIColor.systemGray5
//        if (indexPath.row == 0) {
//            let imageView = UIImageView()
//            imageView.frame = CGRect(x: 15, y: 15, width: 20, height: 20)
//            cell.addSubview(imageView)
//            imageView.image = UIImage(named: "Document")
//            let button = UIButton()
//            button.setTitle("评论", for: UIControl.State.normal)
//            button.frame = CGRect(x: 40, y: 0, width: 50, height: 50)
//            button.setTitleColor(UIColor.black, for: UIControl.State.normal)
//            cell.addSubview(button)
//        }
//        if (indexPath.row == 1) {
//            let imageView = UIImageView()
//            imageView.frame = CGRect(x: 15, y: 15, width: 20, height: 20)
//            cell.addSubview(imageView)
//            imageView.image = UIImage(named: "Heart")
//            let button = UIButton()
//            button.setTitle("点赞", for: UIControl.State.normal)
//            button.frame = CGRect(x: 40, y: 0, width: 50, height: 50)
//            button.setTitleColor(UIColor.black, for: UIControl.State.normal)
//            cell.addSubview(button)
//        }
//        if (indexPath.row == 2) {
//            let imageView = UIImageView()
//            imageView.frame = CGRect(x: 15, y: 15, width: 20, height: 20)
//            cell.addSubview(imageView)
//            imageView.image = UIImage(named: "Chat")
//            let button = UIButton()
//            button.setTitle("私信", for: UIControl.State.normal)
//            button.frame = CGRect(x: 40, y: 0, width: 50, height: 50)
//            button.setTitleColor(UIColor.black, for: UIControl.State.normal)
//            cell.addSubview(button)
//        }
//        return cell
//    }
//
    
    
    //定义屏幕的宽和高
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    let buttonOne = UIButton(type: UIButton.ButtonType.custom)
    //let textViewFront = UITableView()
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.white
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        //let tableView = UITableView(frame: CGRect(x: 230, y: 120, width: 100, height: 300))
        //tableView.delegate = self
        //tableView.dataSource = self
        //self.addSubview(tableView)
        //tableView.register(NSClassFromString("UITableViewCell"), forCellReuseIdentifier: "11111")
//        tableView.snp.makeConstraints { make in
//            make.left.equalTo(self).offset(100)
//            make.top.equalTo(self).offset(100)
//            make.width.equalTo(100)
//            make.height.equalTo(100)
//        }
        
        
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
        
        let buttonNotification = UIButton(type: UIButton.ButtonType.custom)
        self.addSubview(buttonNotification)
        buttonNotification.setImage(UIImage(named: "Notification-Icon"), for: UIControl.State.normal)
        buttonNotification.snp.makeConstraints { make in
            make.left.equalTo(self).offset(280)
            make.top.equalTo(self).offset(75)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        buttonNotification.addTarget(self, action: #selector(pressButtonNoti(button:)), for: UIControl.Event.touchUpInside)
        
        
        
        
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
            make.top.equalTo(imageViewSix).offset((Width  - 20 ) / 375 * 236 + 10)
            make.width.equalTo(Width - 20)
            make.height.equalTo((Width  - 20 ) / 375 * 45)
        }
        
        
//        let labelStreet = UILabel()
//        self.addSubview(labelStreet)
//        labelStreet.text = "1 hour ago"
//        labelStreet.textColor = UIColor.systemGray3
//        labelStreet.font = UIFont.systemFont(ofSize:18)
//        labelStreet.snp.makeConstraints { make in
//            make.left.equalTo(self).offset(Width - 100)
//            make.top.equalTo(labelNameTwo).offset(0)
//            make.width.equalTo(100)
//            make.height.equalTo(30)
//        }
        
        
        
        let imageViewEight = UIImageView()
        self.addSubview(imageViewEight)
        imageViewEight.image = UIImage(named: "Frame 7085-2")
        imageViewEight.snp.makeConstraints { make in
            make.left.equalTo(self).offset(10)
            make.top.equalTo(imageViewSeven).offset((Width  - 20 ) / 375 * 45 + 10)
            make.width.equalTo(Width - 20)
            make.height.equalTo((Width  - 20 ) / 335 * 135)
        }
        
        
        
        let imageViewNine = UIImageView()
        self.addSubview(imageViewNine)
        imageViewNine.image = UIImage(named: "Frame 7091-2")
        imageViewNine.snp.makeConstraints { make in
            make.left.equalTo(self).offset(10)
            make.top.equalTo(imageViewEight).offset((Width  - 20 ) / 335 * 135 + 10)
            make.width.equalTo(Width - 20)
            make.height.equalTo((Width  - 20 ) / 347 * 232)
        }

    }
    @objc func pressButtonNoti(button : UIButton) {
        //self.addSubview(tableview)
        button.isSelected = !button.isSelected
        print(button.isSelected)
        if (button.isSelected == true) {
            buttonOne.setImage(UIImage(named: "Frame 427319635"), for: UIControl.State.normal)
            self.addSubview(buttonOne)
            buttonOne.snp.makeConstraints { make in
                make.left.equalTo(self).offset(250)
                make.top.equalTo(self).offset(110)
                make.width.equalTo(85)
                make.height.equalTo(142)
            }
            
            
            let buttonRemark = UIButton(type: UIButton.ButtonType.custom)
            //buttonRemark.backgroundColor = UIColor.red
            buttonOne.addSubview(buttonRemark)
            buttonRemark.snp.makeConstraints { make in
                make.left.equalTo(buttonOne).offset(0)
                make.top.equalTo(buttonOne).offset(0)
                make.width.equalTo(85)
                make.height.equalTo(47)
            }
            buttonRemark.addTarget(self, action: #selector(pressRemark), for: UIControl.Event.touchUpInside)
            
            
            
            let buttonLikes = UIButton(type: UIButton.ButtonType.custom)
            //buttonLikes.backgroundColor = UIColor.red
            buttonOne.addSubview(buttonLikes)
            buttonLikes.snp.makeConstraints { make in
                make.left.equalTo(buttonRemark).offset(0)
                make.top.equalTo(buttonRemark).offset(47)
                make.width.equalTo(85)
                make.height.equalTo(47)
            }
            buttonLikes.addTarget(self, action: #selector(pressLikes), for: UIControl.Event.touchUpInside)
            
            
            
            let buttonPrivate = UIButton(type: UIButton.ButtonType.custom)
            //buttonPrivate.backgroundColor = UIColor.red
            buttonOne.addSubview(buttonPrivate)
            buttonPrivate.snp.makeConstraints { make in
                make.left.equalTo(buttonLikes).offset(0)
                make.top.equalTo(buttonLikes).offset(47)
                make.width.equalTo(85)
                make.height.equalTo(47)
            }
            buttonPrivate.addTarget(self, action: #selector(pressPrivacy), for: UIControl.Event.touchUpInside)
        }
        if (button.isSelected == false) {
            buttonOne.removeFromSuperview()
        }
        
    }
    @objc func pressRemark() {
        NotificationCenter.default.post(name: Notification.Name("JumpToRemark"), object: nil)
        
    }
    @objc func pressLikes() {
        NotificationCenter.default.post(name: Notification.Name("JumpToLikes"), object: nil)
    }
    @objc func pressPrivacy() {
        NotificationCenter.default.post(name: Notification.Name("JumpToPrivacy"), object: nil)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
