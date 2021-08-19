//
//  RecipeHighlights.swift
//  Recipe List App
//
//  Created by Liam Heskey on 19/08/2021.
//

import SwiftUI

struct RecipeHighlights: View {
   
    var allHighlights = ""
    
    init(highlights:[String]) {
        
        // Loop through the highlights and build a string
        for index in 0..<highlights.count {
            
            // If this is the last item, no comma
            if index == highlights.count - 1 {
                
                allHighlights += highlights[index]
                
            }
            else {
                
                allHighlights += highlights[index] + ", "
                
            }
        }
        
    }
    
    var body: some View {
        Text(allHighlights)
    }
}

struct RecipeHighlights_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighlights(highlights: ["Test", "Test2"])
    }
}
