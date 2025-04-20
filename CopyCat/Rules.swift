//
//  Rules.swift
//  CopyCat
//
//  Created by Qiana Partee on 4/19/25.
//

import Foundation
import UIKit

struct RulesAndSettings {
    let gameRules: String = """
    HOW TO PLAY – Cat Memory Game.  Think Simon, but with cats!!

    OBJECTIVE:
    Repeat the correct sequence of cats to advance through stages. The game ends when you get a sequence wrong.

    RULES:
    1. Watch the Sequence:
       At the start of each round, a sequence of cats will be shown one by one. Pay close attention to the order!

    2. Memorize the Order:
       Your goal is to remember the exact sequence of cat appearances.

    3. Repeat the Sequence:
       Tap the cats in the same order they were shown.

    4. Advance or End:
       - If your input matches the sequence, you move on to the next (longer) sequence.
       - If your input is incorrect, the game ends.

    DIFFICULTY MODES:

    Easy Mode:
    - Shorter sequences
    - Slower speed — more time between each cat

    Hard Mode:
    - Longer sequences
    - Faster speed — cats appear quickly in the sequence

    """
    let difficulty: GameSequenceDifficulty
    let speed: GameSpeed
    
    
    enum GameSequenceDifficulty {
        case easy
        case hard
        
        var seqDifficulty: String {
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
