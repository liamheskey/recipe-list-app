//
//  recipeModel.swift
//  Recipe List App
//
//  Created by Liam Heskey on 14/08/2021.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        
        self.recipes = DataService.getLocalData()
        
        
    }
   static func getPortion(ingriedient:Ingriedient, recipeServings:Int, targetServings:Int) -> String {
    
    var portion = ""
    var numerator = ingriedient.num ?? 1
    var denominator = ingriedient.denom ?? 1
    var wholePortions = 0
    
    if ingriedient.num != nil {
        
        // Get a single serving size by multiplying denominator by the recipe servings
        denominator = denominator * recipeServings
        
        // Get  target portion by multiplying numerator by target servings
        numerator *= targetServings
        
        // Reduce fraction by greatest common divisor
        let divisor = Rational.greatestCommonDivisor(numerator, denominator)
        numerator /= divisor
        denominator /= divisor
        
        // Get the whole portion if numerator > demoninator
        if numerator >= denominator {
           
            // Calculated whole portions
            wholePortions = numerator / denominator
            
            // Calculate the remainder
            numerator = numerator % denominator
            
            // Assign to portion string
            portion += String(wholePortions)
        }
        
        // Express the remainder as a fraction
        if numerator > 0 {
            
            // Assign remainder as fraction to portion string
            portion += wholePortions > 0 ? " " : ""
            portion += "\(numerator)/\(denominator)"
            
        }
    }
    if var unit = ingriedient.unit {
        
        var suffix = ""
        
        // If need to pluarlize
        if wholePortions > 1 {
        
        
        // Calculate appropriate suffix
        if unit.suffix(2) == "ch" {
            suffix = "es"
            }
        else if unit.suffix(1) == "f" {
            
            unit = String(unit.dropLast())
            suffix = "ves"
            
        }
        else {
            
            unit += "s"
            
           }
        }
        portion += ingriedient.num == nil && ingriedient.denom == nil ? "" : " "
      
        return portion + unit
        
    }
      
        return portion
    }
}
