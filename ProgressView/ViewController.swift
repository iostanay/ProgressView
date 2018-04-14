//
//  ViewController.swift
//  ProgressView
//
//  Created by Tanay Bhattacharjee on 14/04/18.
//  Copyright © 2018 Tanay Bhattacharjee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let progressView = TBProgressView()
        progressView.frame = self.view.bounds
        self.view.addSubview(progressView)
    }

   
}

