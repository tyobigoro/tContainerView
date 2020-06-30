//
//  ViewController.swift
//  tContainerView
//
//  Created by tyobigoro on 2020/07/01.
//  Copyright © 2020 tyobigoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @objc func longPress(_ sender: UILongPressGestureRecognizer){
        if sender.state == .began {
            print("LongPress began")
        } else if sender.state == .ended {
            print("LongPress ended")
        }
    }
    
}



