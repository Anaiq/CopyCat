//
//  Rules.swift
//  CopyCat
//
//  Created by Qiana Partee on 4/19/25.
//

import Foundation
import UIKit

struct RulesAndSettings {
    let rulesText: String
    let difficulty: GameDifficulty
    
    rulesText = "Think Simon but with cats!!"
    
    enum GameDifficulty {
        case easy
        case hard
        
        var difficulty: String {
            switch self {
            case .easy:
                return "easy"
            case .hard:
                return "hard"
            }
        }
    }
    
    enum GameSpeed {
        case fast
        case normal
        
        var speedMultiplier: Double {
            switch self {
            case .fast: return 1.5
            case .normal: return 1.0
            }
        }
    }
    

    
    
    
}
