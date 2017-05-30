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
        
        let anim = POPDecayAnimation(propertyNamed: kPOPLayerPositionX)
        anim?.velocity = 100
        
        button.layer.pop_add(anim, forKey: "slide")
    }
}

