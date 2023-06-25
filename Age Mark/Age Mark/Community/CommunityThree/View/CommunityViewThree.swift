//
//  CommunityViewThree.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/20.
//

import UIKit
import ARKit
import SceneKit
class CommunityViewThree: UIView {
    let Width = UIScreen.main.bounds.width
    let Height = UIScreen.main.bounds.height
    
    var sceneView: SCNView!
    
    //初始化view
    func initView() {
        self.backgroundColor = UIColor.gray
        self.frame = CGRect(x: 0, y: 0, width: Width , height: Height)
        
        
        
        sceneView = SCNView()
        sceneView.frame = CGRect(x: 0, y: 200, width: Width, height: Width)
        sceneView.accessibilityViewIsModal = false
        sceneView.isUserInteractionEnabled = true
        sceneView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(sceneView)
        sceneView.backgroundColor = UIColor.clear
        
        
        // Load the USDZ model file and add it to the scene
        guard let usdzURL = Bundle.main.url(forResource: "Greek_Temple", withExtension: "usdz") else { return }
        let scene = try! SCNScene(url: usdzURL, options: nil)
        sceneView.scene = scene
        
        
        // Add lighting to the scene
        let lightNode = SCNNode()
        //lightNode.geometry?.firstMaterial?.diffuse.contents = UIColor.white
        lightNode.light = SCNLight()
        //lightNode.light?.color = UIColor.
        lightNode.light?.type = .directional
        lightNode.position = SCNVector3(x: 0, y: 0, z: 0)
        scene.rootNode.addChildNode(lightNode)
        
        
        
        sceneView.allowsCameraControl = true
        sceneView.showsStatistics = true
        
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "Info")
//        self.addSubview(imageView)
//        imageView.snp.makeConstraints { make in
//            make.left.equalTo(self).offset(0)
//            make.top.equalTo(self).offset(0)
//            make.width.equalTo(Width)
//            make.height.equalTo(Width / 375 * 812)
//        }
//
//
//        let label = UILabel()
//        label.backgroundColor = UIColor.white
//        self.addSubview(label)
//        label.snp.makeConstraints { make in
//            make.left.equalTo(self).offset(0)
//            make.top.equalTo(self).offset(0)
//            make.width.equalTo(Width)
//            make.height.equalTo(50)
//        }
//
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(named: "arrow-left 1"), for: UIControl.State.normal)
        self.addSubview(button)
        button.snp.makeConstraints { make in
            make.left.equalTo(self).offset(30)
            make.top.equalTo(self).offset(50)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        button.addTarget(self, action: #selector(returnTwo), for: UIControl.Event.touchUpInside)
        
        
    }
    
    @objc func returnTwo() {
        NotificationCenter.default.post(name: Notification.Name("ReturnToCommunityTwo"), object: nil)
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
