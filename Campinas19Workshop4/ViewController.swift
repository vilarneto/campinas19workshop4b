//
//  ViewController.swift
//  Campinas19Workshop4
//
//  Created by Vilar da Camara Neto on 15/10/19.
//  Copyright © 2019 Vilar da Camara Neto. All rights reserved.
//

import UIKit

enum TemperatureType {
    case C
    case K
    case F
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func convertToKelvin(temperatue:Float,originalType:TemperatureType) -> Float {
        switch originalType{
        case TemperatureType.C:
            return temperatue + 273.15
        case TemperatureType.F:
            return (temperatue - 32) * 5/9 + 273.15
        default:
            return temperatue
        }
    }

}

