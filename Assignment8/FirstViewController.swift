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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let destinationIndex = tabBarController?.viewControllers?.firstIndex(where: { $0 is SecondViewController })
        else{
            return
        }
        let secondViewController = tabBarController!.viewControllers![destinationIndex] as! SecondViewController
        secondViewController.loadViewIfNeeded()
        self.slider.value = secondViewController.slider.value
        self.valueLabel.text = secondViewController.valueLabel.text
    }
}
