//
//  SubViewController.swift
//  tContainerView
//
//  Created by tyobigoro on 2020/07/01.
//  Copyright © 2020 tyobigoro. All rights reserved.
//

import UIKit

// 別ファルとか関係ないけど、なんでかこだわってるみたいだから見通し悪いけど別ファイルに

class SubViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBAction func addViewToParent() {
        
        guard let parentVC = self.parent as? ViewController else { return }
        
        let addView = UIView()
        addView.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        addView.center = parentVC.view.center
        addView.backgroundColor = .blue
        
        let gesture = UILongPressGestureRecognizer(target: parentVC, action: #selector(parentVC.longPress(_:)))
        gesture.delegate = self
        
        addView.addGestureRecognizer(gesture)
        
        parentVC.view.addSubview(addView)
    }
    
}
