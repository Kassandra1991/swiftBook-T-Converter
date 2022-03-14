//
//  ViewController.swift
//  T-Converter
//
//  Created by MacBook Pro on 2022-03-14.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var celsiusLabel: UILabel!
    
    @IBOutlet weak var foringeitLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.value = 0
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.tintColor = .yellow
        }
    }
    
    
    
    
    @IBAction func changeTemperature(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        celsiusLabel.text = "\(currentValue)ºC"
        foringeitLabel.text = "\(currentValue * 9 / 5 + 32)ºF"
        
    }
}

