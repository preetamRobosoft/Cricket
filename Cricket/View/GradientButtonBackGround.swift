//
//  GradientButtonBackGround.swift
//  Cricket
//
//  Created by Dhanush Devadiga on 06/12/22.
//

import Foundation
import UIKit


extension UIView {
    func applyGradient(colours: [UIColor], cornerRadius: CGFloat) -> CAGradientLayer {
        return self.applyGradient(colours: colours,cornerRadius: cornerRadius, locations: nil)
    }

    func applyGradient(colours: [UIColor],cornerRadius: CGFloat, locations: [NSNumber]?) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.startPoint = CGPoint(x: 0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 0.5)
        gradient.cornerRadius = cornerRadius
        self.layer.insertSublayer(gradient, at: 0)
        return gradient
    }
}


class GradientButton: UIButton {
    let gradientLayer = CAGradientLayer()
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func applyGradient(colors: [UIColor], cornerRadius: CGFloat) {
        gradientLayer.frame = self.bounds
        gradientLayer.colors = colors
        gradientLayer.colors = colors.map { $0.cgColor }
        gradientLayer.cornerRadius = cornerRadius
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
