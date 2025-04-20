//
//  GameViewController.swift
//  CopyCat
//
//  Created by Qiana Partee on 4/18/25.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var replayButton: UIButton!
    
    @IBOutlet weak var replayIndex: UILabel!
    
    var currentNumberOfReplays = 0
    var totalReplays = 3
    var currentLevelIndex = 0
    var totalLevels = 5
    var cats: [UIImageView] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white // Or whatever your game background is
        self.navigationItem.hidesBackButton = true
        replayIndex.text = "\(currentNumberOfReplays) of \(totalReplays) used."
    }
    

    @IBAction func didPushReplayButton(_ sender: UIButton) {
        print("Pressed replay!")
        currentNumberOfReplays += 1
        if (currentNumberOfReplays > totalReplays) {
            replayIndex.text = "\(currentNumberOfReplays - 1) of \(totalReplays) used."
            showLastReplayAlert()
        } else {
            replayIndex.text = "\(currentNumberOfReplays) of \(totalReplays) used."
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
    
    
}
