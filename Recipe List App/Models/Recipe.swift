//
//  Recipe.swift
//  Recipe List App
//
//  Created by Liam Heskey on 14/08/2021.
//

import Foundation

class Recipe:Identifiable, Decodable {
    
    var id:UUID?
    
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var servings:Int
    var highlights:[String]
    var ingredients:[Ingriedient]
    var directions:[String]
    
}
