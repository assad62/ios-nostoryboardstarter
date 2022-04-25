//
//  secondViewController.swift
//  UIKitTest
//
//  Created by Development on 25/4/2022.
//

import Foundation


import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        setupViews()
    }
    
    func setupViews(){
        let loginButton = makeButton(withText: "Go back")
        view.addSubview(loginButton)
        
        
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 40.0),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    
    }
    
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
     }
    
    func makeButton(withText text:String)->UIButton{
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.setTitle(text, for: .normal)
        button.backgroundColor = .systemMint
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        return button
    }
}
