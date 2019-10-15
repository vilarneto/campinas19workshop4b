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
    case Fahrenheit
}


func convertToCelsius(amount: Double, fromUnit: TemperatureUnit) -> Double {
    switch fromUnit {
    case .Kelvin:
        return amount - 273.15
    case .Celsius:
        return amount
    case .Fahrenheit:
        return (amount - 32) * 5 / 9
    }
}

func convertToFahrenheit(amount: Double, fromUnit: TemperatureUnit) -> Double {
    switch fromUnit {
    case .Kelvin:
        return ((amount - 273.15) * 9/5 + 32)
    case .Celsius:
        return ((amount * 9/5) + 32)
    case .Fahrenheit:
        return amount
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

