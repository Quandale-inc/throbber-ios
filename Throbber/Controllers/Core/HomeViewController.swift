//
//  HomeViewController.swift
//  Throbber
//
//  Created by Adnan Joraid on 2022-10-31.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupNavBar()
    }
    
    private func setupNavBar() {
        let image: UIImage = UIImage(named: "LLama")!
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        let button = UIButton()
        button.setBackgroundImage(image, for: .normal)
        self.navigationItem.titleView = imageView
        
        let profileButton = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: #selector(profileButtonAction))
        let sparklesButton = UIBarButtonItem(image: UIImage(systemName: "sparkles"), style: .plain, target: self, action: #selector(sparklesButtonAction))
        
        navigationItem.leftBarButtonItem = profileButton
        navigationItem.rightBarButtonItem = sparklesButton
        
    }
    
    @objc private func profileButtonAction() {
        print("Profile Button Is Clicked")
    }
    
    @objc private func sparklesButtonAction() {
        print("Sparkles Button Is Clicked")
    }
    
}

