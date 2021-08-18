//
//  Ingriedients.swift
//  Recipe List App
//
//  Created by Liam Heskey on 18/08/2021.
//

import Foundation

class Ingriedient: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
    
}


