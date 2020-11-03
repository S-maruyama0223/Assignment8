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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueLabel.text = String(slider.value)
    }
    
    @IBAction private func valueChanged(_ slider: UISlider) {
        valueLabel.text = String(slider.value)
        if let secondViewController = tabBarController?.viewControllers?[1] as? SecondViewController {
            secondViewController.loadViewIfNeeded()
            secondViewController.valueLabel.text = String(slider.value)
            secondViewController.slider.value = self.slider.value
        }else{
            print("View Controller does not exist.")
        }
    }

}

