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
        guard let destinationIndex = tabBarController?.viewControllers?.firstIndex(where: { $0 is FirstViewController })
        else{
            return
        }
        let firstViewController = tabBarController!.viewControllers![destinationIndex] as! FirstViewController
        firstViewController.loadViewIfNeeded()
        firstViewController.valueLabel.text = String(slider.value)
        firstViewController.slider.value = self.slider.value
    }
}

