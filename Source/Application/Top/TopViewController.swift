//
//  ViewController.swift
//  RxSwiftSample
//
//  Created by Yohei Okubo on 2017/06/03.
//  Copyright © 2017 jmty. All rights reserved.
//

import UIKit

protocol JmtyViewControllable {
    func getStatusbarHeight() -> CGFloat
    func getNavigationbarHeight() -> CGFloat
}

extension JmtyViewControllable  where Self: UIViewController {
    
    func getStatusbarHeight() -> CGFloat {
        return UIApplication.shared.statusBarFrame.height
    }

    func getNavigationbarHeight() -> CGFloat {
        if let height = self.navigationController?.navigationBar.frame.height {
            return height
        } else {
            return 0
        }
    }
}

//------

let topViewControllerNibName = "TopViewController"
class TopViewController: UIViewController, JmtyViewControllable {

    override func loadView() {
        if let view = UINib(nibName: topViewControllerNibName, bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView {
            self.view = view
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
