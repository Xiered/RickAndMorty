//
//  SplashScreenController.swift
//  RickAndMorty
//
//  Created by Дмитрий Герасимов on 28.06.2024.
//

import UIKit

class SplashScreenViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "Loading component")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        UIView.animate(withDuration: 3.0, delay: 0, options: .curveLinear, animations: {
            self.imageView.transform = CGAffineTransform(rotationAngle: .pi) 
        }, completion: nil)
    }
}


