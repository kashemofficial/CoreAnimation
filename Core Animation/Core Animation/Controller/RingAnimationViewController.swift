//
//  RingAnimationViewController.swift
//  Core Animation
//
//  Created by Abul Kashem on 25/2/23.
//

import UIKit

class RingAnimationViewController: UIViewController {

    let shape = CAShapeLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let circlePath = UIBezierPath(arcCenter: view.center,
                                      radius: 150,
                                      startAngle: -(.pi / 2) ,
                                      endAngle: .pi * 2,
                                      clockwise: true)
        
        
        
        shape.path = circlePath.cgPath
        shape.lineWidth = 15
        shape.strokeColor = UIColor.green.cgColor
        shape.fillColor = UIColor.clear.cgColor
        shape.strokeEnd = 0
        view.layer.addSublayer(shape)
        
        let button = UIButton(frame: CGRect(x: 20, y: Int(view.frame.size.height) - 100, width: Int(view.frame.size.width) - 40, height: 50))
        
        view.addSubview(button)
        button.setTitle("Animation", for: .normal)
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    
    }
    
    @objc func didTapButton(){
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.toValue = 1
        animation.duration = 3
        animation.isRemovedOnCompletion = false
        animation.fillMode = .forwards
        shape.add(animation, forKey: "animation")
    }

   

}