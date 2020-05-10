//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Samuel Kim on 5/8/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation


struct Calculator {
    
    func calculate (height: Float, weight: Float) -> Float {
        var bmi: Float = 0.0
        
        bmi = weight/pow(height, 2)
        
        return bmi
        
    }
}
