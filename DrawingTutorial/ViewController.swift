//
//  ViewController.swift
//  DrawingTutorial
//
//  Created by Manuel Munoz on 19/05/2020.
//  Copyright © 2020 Manuel Munoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let drawingView = DrawingView()
    let eraseSwitch = UISwitch()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let isDrawingLabel = UILabel()
        isDrawingLabel.text = "Is Erasing"
        isDrawingLabel.font = UIFont.systemFont(ofSize: 16)
        isDrawingLabel.textColor = .black
        [drawingView, eraseSwitch, isDrawingLabel].forEach(view.addSubview(_:))
        drawingView.pinToSuperViewEdges()
        
        eraseSwitch.translatesAutoresizingMaskIntoConstraints = false
        eraseSwitch.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -12).isActive = true
        eraseSwitch.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        eraseSwitch.addTarget(self, action: #selector(changeModes), for: .valueChanged)
        
        isDrawingLabel.translatesAutoresizingMaskIntoConstraints = false
        isDrawingLabel.bottomAnchor.constraint(equalTo: eraseSwitch.topAnchor, constant: -8).isActive = true
        isDrawingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc private func changeModes() {
        drawingView.isDrawing.toggle()
    }
}

