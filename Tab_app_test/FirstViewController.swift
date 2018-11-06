//
//  FirstViewController.swift
//  Tab_app_test
//
//  Created by masato on 6/11/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = .green
        let label_1 = UILabel(frame: view.frame)
        label_1.text = "Screen 1"
        view.addSubview(label_1)

        // set Button by func
        transScreenButton()
    }

    // make button
    func transScreenButton()  {
        let button_1 = UIButton(frame: CGRect(x: self.view.frame.width / 2 - 200 / 2, y: self.view.frame.height / 2 - 150 / 2, width: 200, height: 150))
        button_1.titleLabel?.text = "Screen Transition Button"
        button_1.backgroundColor = .blue
        button_1.addTarget(self, action: #selector(transScreen), for: .touchUpInside)

        view.addSubview(button_1)

    }


    // set Screen Transaction Action

    @objc func transScreen() {
        let secondScreen = SecondViewController()

        secondScreen.modalTransitionStyle = .coverVertical
        present(secondScreen, animated: true, completion: nil)

    }

}

