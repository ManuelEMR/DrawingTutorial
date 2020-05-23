//
//  UIView+Constraints.swift
//  DrawingTutorial
//
//  Created by Manuel Munoz on 19/05/2020.
//  Copyright © 2020 Manuel Munoz. All rights reserved.
//

import UIKit

extension UIView {
    @discardableResult
    func pinToSuperViewEdges() -> [NSLayoutConstraint] {
        guard let superview = superview?.safeAreaLayoutGuide else { return [] }
        
        translatesAutoresizingMaskIntoConstraints = false
        
        topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive = true
        
        return constraints
    }
}
