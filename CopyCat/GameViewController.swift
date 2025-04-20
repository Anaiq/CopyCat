//
//  GameViewController.swift
//  CopyCat
//
//  Created by Qiana Partee on 4/18/25.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var currentLevelLabel: UILabel!
    @IBOutlet weak var replayButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var replayIndex: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    var game = Game()
    var totalReplays = 3
    var totalLevels = 5
    var currentScore = 0
//    var currentNumberOfReplays = 0
    var cats: [UIImageView] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view.
        view.backgroundColor = .white // Or whatever your game background is
        self.navigationItem.hidesBackButton = true
        var currentLevel = game.level
        
        replayIndex.text = "\(game.replayNumber) of \(totalReplays) used."
        currentLevelLabel.text = "Level:  \(currentLevel) of \(totalLevels)"
        scoreLabel.text = "Score: \(currentScore)"
//        replayButton.isEnabled = true
//        replayButton.alpha = 1.0
//        game.replayNumber = 0
    }
    
    

    @IBAction func didPushReplayButton(_ sender: UIButton) {
        print("Pressed replay!")
        game.replayNumber += 1
        if (game.replayNumber > totalReplays) {
            game.replayNumber = 3
            replayIndex.text = "\(game.replayNumber) of \(totalReplays) replays used."
            sender.isEnabled = false
            showLastReplayAlert()
        } else {
            replayIndex.text = "\(game.replayNumber) of \(totalReplays) used."
        }
        
    }
    
    func showLastReplayAlert() {
        let alertController = UIAlertController(title: "No More Replays", message: "You have no more replays!", preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "Dismiss", style: .default) { _ in
            return
        }
        alertController.addAction(dismissAction)
        // Present the alert
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func didPushPlayAgain(_ sender: UIButton) {
        print("Pressed play again!")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let tabBC = storyboard.instantiateViewController(withIdentifier: "tabBarController")
        tabBC.modalPresentationStyle = .fullScreen
        present(tabBC, animated: true, completion: nil)
    }
    
}
