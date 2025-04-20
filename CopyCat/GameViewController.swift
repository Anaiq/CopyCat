//
//  GameViewController.swift
//  CopyCat
//
//  Created by Qiana Partee on 4/18/25.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var cat1: UIImageView!
    @IBOutlet weak var cat2: UIImageView!
    @IBOutlet weak var cat3: UIImageView!
    @IBOutlet weak var cat4: UIImageView!
    
    @IBOutlet weak var seeSequenceAgainButton: UIButton!
    @IBOutlet weak var currentLevelLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var replayIndex: UILabel!
    
    var game = Game()
    var totalReplays = 3
    var totalLevels = 5
    var selectedCatIndex: Int = 0
    var catImageViews: [UIImageView] = []
    var userSequence: [Int] = []
    var catSequence: [Int] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view.
        view.backgroundColor = .white // Or whatever your game background is
        self.navigationItem.hidesBackButton = true
        
        catImageViews =  [cat1, cat2, cat3, cat4]
        
        for (index, catImageView) in catImageViews.enumerated() {
            catImageView.isUserInteractionEnabled = true
            catImageView.tag = index
            let tap = UITapGestureRecognizer(target: self, action: #selector(catTapped(_:)))
            catImageView.addGestureRecognizer(tap)
        }
        
        game.resetGame()
        configure(with: game)
    }
    
    
    private func configure(with game: Game) {
        replayIndex.text = "\(game.replayNumber) of \(totalReplays) used."
        currentLevelLabel.text = "Level:  \(game.level) of \(totalLevels)"
        scoreLabel.text = "Score: \(game.score)"
    }
    
    
    func createCatSequence() {
        catSequence = []
        userSequence = []
        
        for _ in 0..<game.level {
            let randomIndex = Int.random(in: 0..<catImageViews.count)
            catSequence.append(randomIndex)
        }
        
        playCatSequence()
    }
    
    
    func playCatSequence() {
        for (i, catIndex) in catSequence.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) * 0.6) {
                self.animateRandomCat(at: catIndex)
            }
        }
    }
    
    
    @objc func catTapped(_ sender: UITapGestureRecognizer) {
        guard let tappedView = sender.view else {return}
        
        let tappedIndex = tappedView.tag
        animateRandomCat(at: tappedIndex)
        userSequence.append(tappedIndex)
        
        let currentAttempt = userSequence.count - 1
        
        if catSequence[currentAttempt] != tappedIndex {
            showLoseScreen()
            return
        }
        
        if userSequence.count == catSequence.count {
            levelCompleted()
        }
    }
    
    @IBAction func didPressPlay(_ sender: UIButton) {
        sender.isHidden = true
        createCatSequence()
    }
    
    
    func animateRandomCat(at index: Int) {
        let selectedCat = catImageViews[index]

        UIView.animate(withDuration: 0.2,
           animations: {
            selectedCat.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            selectedCat.backgroundColor = .systemYellow
           },
           completion: { _ in
               UIView.animate(withDuration: 0.2) {
                   selectedCat.transform = .identity
                   selectedCat.backgroundColor = .clear
               }
           })
    }
    
    
    @IBAction func showSequenceAgain(_ sender: UIButton) {
        print("Show sequence again please!")
        playCatSequence()
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
    
    func checkUserSequence() {
        if userSequence != self.catSequence {
            showLoseScreen()
        } else {
            levelCompleted()
        }
    }
    
    func levelCompleted() {
        game.nextLevel()
        
        if game.isGameComplete {
            showWinScreen()
        } else {
            currentLevelLabel.text = "Level:  \(game.level) of \(totalLevels)"
            scoreLabel.text = "Score: \(game.score)"
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            self.createCatSequence()
        }
    }
    
    func showWinScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let winVC = storyboard.instantiateViewController(withIdentifier: "GameOverControllerW") as? GameOverControllerW {navigationController?.pushViewController(winVC, animated: true)}
    }
    
    func showLoseScreen () {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let loseVC = storyboard.instantiateViewController(withIdentifier: "GameOverControllerL") as? GameOverControllerL {navigationController?.pushViewController(loseVC, animated: true)}
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
