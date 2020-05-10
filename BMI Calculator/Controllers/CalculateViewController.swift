//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!

    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
    }
    
    @IBAction func calculatePushed(_ sender: UIButton) {
        let weight = sliderWeight.value
        let height = sliderHeight.value
        
        let bmi = calculator.calculate (height: height, weight: weight)
        
        self.performSegue(withIdentifier: "gotoResult", sender: self)
        
        print(bmi)
    }
    
    @IBAction func sliderHeightChanged(_ sender: UISlider) {
//        print(sender.value)
        
        let val = String(format: "%.2f", sender.value)
        
        labelHeight.text = val + "m"
    }
    
    @IBAction func sliderWeightChanged(_ sender: UISlider) {
//        print(sender.value)
        
        let val = String(format: "%.1f", sender.value)
        labelWeight.text = val + "Kg"
    }
    
    var calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

