//
//  ViewController.swift
//  UIKitlearning
//
//  Created by javad on 31.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        view.center = CGPoint(x: 50, y: 50)
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    }()
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .yellow
        
        setupView()
    }
    
    func setupView() {
        view.addSubview(greenView)
        
        // constraints for greenView
        greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        greenView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        greenView.widthAnchor.constraint(equalToConstant: 275).isActive = true
        greenView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
//        //constraints for blueView
//        blueView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: 25).isActive = true
//        blueView.topAnchor.constraint(equalTo: greenView.topAnchor, constant: 25).isActive = true
//        blueView.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        blueView.heightAnchor.constraint(equalToConstant: 100).isActive = true
//
//        // constraints for redView
//        redView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: 25).isActive = true
//        redView.topAnchor.constraint(equalTo: greenView.topAnchor, constant: 25).isActive = true
//        redView.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -25).isActive = true
//        redView.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        redView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }


}

