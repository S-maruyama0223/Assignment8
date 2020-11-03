//
//  SecondViewController.swift
//  Assignment8
//
//  Created by 丸山翔太郎 on 2020/11/03.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueLabel.text = String(slider.value)
    }
    
    @IBAction private func valueChanged(_ slider: UISlider) {
        valueLabel.text = String(slider.value)
        if let firstViewController = tabBarController?.viewControllers?[0] as? FirstViewController {
            firstViewController.loadViewIfNeeded()
            firstViewController.valueLabel.text = self.valueLabel.text
            firstViewController.slider.value = self.slider.value

        }else{
            print("View Controller does not exist.")
        }
    }
    
}
