//
//  ViewController.swift
//  Campinas19Workshop4
//
//  Created by Vilar da Camara Neto on 15/10/19.
//  Copyright © 2019 Vilar da Camara Neto. All rights reserved.
//

import UIKit


enum TemperatureUnit {
    case Kelvin
    case Celsius
    case Farenheit
}


func convertToCelsius(amount: Double, fromUnit: TemperatureUnit) -> Double {
    switch fromUnit {
    case .Kelvin:
        return amount - 273.15
    case .Celsius:
        return amount
    case .Farenheit:
        return (amount - 32) * 5 / 9
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

