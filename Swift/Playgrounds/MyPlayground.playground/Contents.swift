//BMI Calculator

import UIKit

func bmiCalc (weight : Float, height : Float) -> String {
    
    var heightVar = pow(height, 2)
    var mass = weight / heightVar
    
    if mass > 25 {
        
        return "Ya kinda overweight"
        
    }
    
    else if mass > 18.5 && mass < 25 {
        
        return "Yo weight is good"
        
    }
    
    else {
        
        return "Ya underweight"
        
    }
    
 
}

bmiCalc(weight: 120, height: 52)

print(bmiCalc(weight: 20, height: 1.5))
print(bmiCalc(weight: 200, height: 1.5))
print(bmiCalc(weight: 96, height: 2))


