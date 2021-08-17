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
    
}
