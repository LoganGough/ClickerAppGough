//
//  Scores.swift
//  ClickerAppGough
//
//  Created by LOGAN GOUGH on 10/22/24.
//

import Foundation



class Scores: Codable{
    
    var name: String
    var score: Int
    var mult: Int
    
    
    init(name: String, score: Int, mult: Int) {
        self.name = name
        self.score = score
        self.mult = mult
    }
    
    
    func toString()-> String{
        return "Name: \(name) \nScore: \(score) \nMultiplier: \(mult)"
    }
    
    
}
