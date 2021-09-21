//
//  ViewController.swift
//  AnimationApp
//
//  Created by Олег Федоров on 21.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
    }

}

