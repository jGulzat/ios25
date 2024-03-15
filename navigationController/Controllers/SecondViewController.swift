//
//  SecondViewController.swift
//  navigationController
//
//  Created by Gulzat Zheenbek kyzy on 15/3/24.
//

import UIKit

class SecondViewController: UIViewController {

    private let nextButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 40, y: 200, width: 200, height: 40))
        button.setTitle("Second view", for: .normal)
        button.backgroundColor = .cyan
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = true
        button.layer.cornerRadius = 16
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(nextButton)
        
        nextButton.addTarget(self, action: #selector(showNextVC), for: .touchUpInside)
    }
    
    @objc func showNextVC() {
        print("showNextVC")
        
        let vc = ThirdViewController()
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
