//
//  Extension + UIButton.swift
//  AnimationApp
//
//  Created by Олег Федоров on 21.09.2021.
//

import Foundation
import UIKit

extension UIButton {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        // продолжительность анимации
        pulse.duration = 0.6
        // масштабирование кнопки
        pulse.fromValue = 0.95
        pulse.toValue = 1
        // включаем параметр автореверс для того, чтобы анимация имела обратный ход
        pulse.autoreverses = true
        // количество повторов анимации
        pulse.repeatCount = 2
        // задание начального ускорения анимации
        pulse.initialVelocity = 0.5
        // затухание анимации
        pulse.damping = 1
        
        // прикрепление анимации к слою элемента юзер интерфейса
        layer.add(pulse, forKey: nil)
    }
}
