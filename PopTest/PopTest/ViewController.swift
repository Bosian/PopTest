//
//  ViewController.swift
//  PopTest
//
//  Created by 劉柏賢 on 2017/5/28.
//  Copyright © 2017年 劉柏賢. All rights reserved.
//

import UIKit
import pop

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }
    
    @IBAction func handler(_ sender: UIButton) {
        let anim = POPSpringAnimation(propertyNamed: kPOPLayerPositionX)!
        
        anim.fromValue = container.frame.origin.x
        anim.toValue = container.frame.origin.x - 320
        anim.springSpeed = 5
        anim.springBounciness = 5
        
        container.layer.pop_add(anim, forKey: "springPosition")
        container.layer.anchorPoint = CGPoint(x: 0, y: container.layer.anchorPoint.y)
    }
}

