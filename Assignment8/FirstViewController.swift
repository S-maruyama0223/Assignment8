//
//  ViewController.swift
//  Assignment8
//
//  Created by 丸山翔太郎 on 2020/11/03.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    @IBAction private func valueChanged(_ slider: UISlider) {
        valueLabel.text = String(slider.value)
        appDelegate.sliderValue = slider.value
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.slider.value = appDelegate.sliderValue
        self.valueLabel.text = String(appDelegate.sliderValue)
    }
}
