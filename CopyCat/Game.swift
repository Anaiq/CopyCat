//
//  Game.swift
//  CopyCat
//
//  Created by Qiana Partee on 4/19/25.
//

import Foundation
import UIKit

struct Game {
    private let timer: [UIImageView] = []
    var level: Int = 1
    let maxLevel: Int = 5
    var score: Int = 0
    var replayNumber: Int = 0
    var isGameComplete: Bool {
        return level > maxLevel
    }
    
    
    mutating func nextLevel() {
        if !isGameComplete {
            self.score += 5
            self.level += 1
        } else {
            print("Game Completed!")
            }
        }
        
    mutating func resetGame() {
        self.level = 1
        self.score = 0
        self.replayNumber = 0
    }
}

