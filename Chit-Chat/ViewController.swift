//
//  ViewController.swift
//  Chit-Chat
//
//  Created by Chaudhary Himanshu Raj on 03/03/18.
//  Copyright © 2018 Chaudhary Himanshu Raj. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Log-Out", style: UIBarButtonItemStyle.plain , target: self, action: (#selector(ViewController.handleLogout)))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func handleLogout() {
        let loginVC = LoginVC()
        present(loginVC, animated: true, completion: nil)
    }

}

