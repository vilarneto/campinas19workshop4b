//
//  ViewController.swift
//  Campinas19Workshop4
//
//  Created by Vilar da Camara Neto on 15/10/19.
//  Copyright © 2019 Vilar da Camara Neto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var originTemperatureValue: UITextField!
    
    @IBOutlet weak var originTemperatureType: UIPickerView!
    
    @IBOutlet weak var destinationTemperatureType: UIPickerView!
    
    var originTypePickerDelegate: PickerController?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var convertButton: UIButton!
    var destinationTypePickerDelegate: PickerController?
    
    let types = ["Celsius", "Fahrenheit", "Kelvin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        originTypePickerDelegate = PickerController(componentes: types)
        destinationTypePickerDelegate = PickerController(componentes: types)
        
        originTemperatureType.delegate = originTypePickerDelegate
        originTemperatureType.dataSource = originTypePickerDelegate
        
        destinationTemperatureType.delegate = destinationTypePickerDelegate
        destinationTemperatureType.dataSource = destinationTypePickerDelegate
        
        convertButton.isEnabled = false
    }

    @IBAction func convertTemperature(_ sender: Any) {
        var result: Float = 0
        
        var originValue: Float
        if let originV = originTemperatureValue.text {
            if let originFloat = Float(originV) {
                originValue = originFloat
            } else {
                originValue = 0
            }
        } else {
            originValue = 0
        }
        
        let originType = originTypePickerDelegate?.selecionado
        
        let destinationType = destinationTypePickerDelegate?.selecionado
        
        // convert values
        
        resultLabel.text = String(result)
        
    }
    
    @IBAction func textFieldDidChange(_ sender: Any) {
        guard let text = originTemperatureValue.text else {
            convertButton.isEnabled = false
            return
        }
        
        if text == "" {
            convertButton.isEnabled = false
            return
        }
        
        guard let originFloat = Float(text) else {
            convertButton.isEnabled = false
            return
        }
        
        convertButton.isEnabled = true
        
    }
    

}

