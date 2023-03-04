//
//  RingAnimationViewController.swift
//  Core Animation
//
//  Created by Abul Kashem on 25/2/23.
//

import UIKit

class RingAnimationViewController: UIViewController {

    let shape = CAShapeLayer()
    
    private let label : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Successfully"
        label.font = .systemFont(ofSize: 36, weight: .light)
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.sizeToFit()
        view.addSubview(label)
        label.center = view.center
        let circlePath = UIBezierPath(arcCenter: view.center,
                                      radius: 150,
                                      startAngle: -(.pi / 2) ,
                                      endAngle: .pi * 2,
                                      clockwise: true)
        
        let trackShape = CAShapeLayer()
        trackShape.path = circlePath.cgPath
        trackShape.fillColor = UIColor.clear.cgColor
        trackShape.lineWidth = 15
        trackShape.strokeColor = UIColor.lightGray.cgColor
        view.layer.addSublayer(trackShape)
        
        
        shape.path = circlePath.cgPath
        shape.lineWidth = 15
        shape.strokeColor = UIColor.systemPink.cgColor
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
        animation.duration = 5
        animation.isRemovedOnCompletion = false
        animation.fillMode = .forwards
        shape.add(animation, forKey: "animation")
    }

   

}
