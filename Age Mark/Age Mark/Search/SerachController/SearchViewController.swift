//
//  SearchViewController.swift
//  Age Mark
//
//  Created by 王璐 on 2023/6/13.
//

import UIKit

class SearchViewController: UIViewController {
    var observer : NSObjectProtocol?
    
    var observerTwo : NSObjectProtocol?
    
    var observerThree : NSObjectProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        //添加view
        let view = SearchView()
        view .initView()
        self.view.addSubview(view)
        observer = NotificationCenter.default.addObserver(forName: Notification.Name("JumpToRemark"), object: nil, queue: nil, using:  { (notification: Notification) -> Void in
            let viewController = RemarkViewController()
            viewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            viewController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(viewController, animated: false)
        })
        
        
        observerTwo = NotificationCenter.default.addObserver(forName: Notification.Name("JumpToLikes"), object: nil, queue: nil, using:  { (notification: Notification) -> Void in
            let viewController = LikesViewController()
            viewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            viewController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(viewController, animated: false)
        })
        
        
        observerThree = NotificationCenter.default.addObserver(forName: Notification.Name("JumpToPrivacy"), object: nil, queue: nil, using:  { (notification: Notification) -> Void in
            let viewController = PrivacyViewController()
            viewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            viewController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(viewController, animated: false)
        })
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
