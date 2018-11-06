//
//  SecondViewController.swift
//  Tab_app_test
//
//  Created by masato on 6/11/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = .blue
        let label_2 = UILabel(frame: view.frame)
        label_2.text = "Screen 2"
        view.addSubview(label_2)

        // set Button by func
        transScreenButton()
    }

    // make button
    func transScreenButton()  {
        let button_2 = UIButton(frame: CGRect(x: self.view.frame.width / 2 - 200 / 2, y: self.view.frame.height / 2 - 150 / 2, width: 200, height: 150))
        button_2.titleLabel?.text = "Screen Transition Button"
        button_2.backgroundColor = .orange
        button_2.addTarget(self, action: #selector(transScreen), for: .touchUpInside)

        view.addSubview(button_2)

    }


    // set Screen Transaction Action

    @objc func transScreen() {
        let secondScreen = FirstViewController()

        secondScreen.modalTransitionStyle = .coverVertical
        present(secondScreen, animated: true, completion: nil)

    }

}

