//
//  ViewController.swift
//  navigationController
//
//  Created by Gulzat Zheenbek kyzy on 15/3/24.
//

import UIKit

class ViewController: UIViewController {

    private let nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("First next view", for: .normal)
        button.backgroundColor = .cyan
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 16
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        configureNextButton()
    }
    
    private func configureNextButton() {
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nextButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        nextButton.addTarget(self, action: #selector(showNextVC), for: .touchUpInside)
    }
    
    @objc func showNextVC() {
        print("showNextVC")
        
        let vc = SecondViewController()
//        vc.modalTransitionStyle = .crossDissolve
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
        
        navigationController?.pushViewController(vc, animated: true)
    }


}

