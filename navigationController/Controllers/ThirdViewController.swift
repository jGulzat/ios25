//
//  ThirdViewController.swift
//  navigationController
//
//  Created by Gulzat Zheenbek kyzy on 15/3/24.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private let nextButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 40, y: 200, width: 200, height: 40))
        button.setTitle("Third next view", for: .normal)
        button.backgroundColor = .cyan
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = true
        button.layer.cornerRadius = 16
        return button
    }()
    
    override func viewDidLoad() {
       
        view.backgroundColor = .white
        view.addSubview(nextButton)
        
        nextButton.addTarget(self, action: #selector(popToRoot), for: .touchUpInside)
    }
    
    @objc func popToRoot() {
        print("showNextVC")
        
        //navigationController?.popToRootViewController(animated: true)
        navigationController?.popViewController(animated: true)
//        let vc = SecondViewController()
    //    navigationController?.popToViewController(vc, animated: true)
    }
}
