//
//  ContentView.swift
//  Recipe List App
//
//  Created by Liam Heskey on 14/08/2021.
//

import SwiftUI

struct RecipeListView: View {
    
    
    @EnvironmentObject var model:RecipeModel
    
    
    var body: some View {
        
        
        
        NavigationView {
            List(model.recipes) {r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        
                    
                
                HStack(alignment: .center, spacing: 20.0) {
                    Image(r.image).resizable().scaledToFill()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipped()
                    Text(r.name)
                }
                        
                    })
            }
                    
                    
            
            .navigationBarTitle("All Recipes")
            
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
