//
//  MyViewController.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //添加view
        let view = MyView()
        view .initView()
        self.view.addSubview(view)
        
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        //self.title = "111111111111111111111111"
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
