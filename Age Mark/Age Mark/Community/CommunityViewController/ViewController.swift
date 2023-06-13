//
//  ViewController.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //添加view
        let view = CommunityView()
        view .initView()
        self.view.addSubview(view)
        // Do any additional setup after loading the view.
    }


}

