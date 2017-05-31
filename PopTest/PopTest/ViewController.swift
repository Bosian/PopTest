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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }
    
    @IBAction func handler(_ sender: UIButton) {
        let anim = POPSpringAnimation(propertyNamed: kPOPLayerPositionX)!
        
        anim.toValue = NSValue(cgPoint: CGPoint(x: 100, y: 200))
        anim.springSpeed = 12
        anim.springBounciness = 20
        
        button.layer.pop_add(anim, forKey: "springPosition")
    }
}

