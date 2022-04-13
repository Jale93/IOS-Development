//
//  ViewController.swift
//  Session_1
//
//  Created by Jala Mammadli on 11.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        self.view.backgroundColor = .white
        print("self.view.frame.width \(self.view.frame.width)")
        print("self.view.frame.height \(self.view.frame.height)")
        
        let label = UILabel()
        label.frame = CGRect.init(x: 100, y: 100, width: 100, height: 30)
        label.text = "Test1"
        label.textColor = .cyan
        label.backgroundColor = .lightGray
        self.view.addSubview(label)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }

}

