//
//  ViewController.swift
//  AnimationApp
//
//  Created by Олег Федоров on 21.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    
    private var animationStarted = false
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.5, // время за которое будет проделан путь 40 поинтов влево
            delay: 0, // задержка
            // массив с параметрами анимаций
            // в блоке замыканий этого параметра мы передаем тот объект, к которому хотим применить анимации
            options: [.autoreverse, .repeat]) {
                // задаем смещение для рамки аутлета вью по оси Х
                if !self.animationStarted {
                    self.coreAnimationView.frame.origin.x -= 40
                    self.animationStarted.toggle()
                }
            }
    }

}

