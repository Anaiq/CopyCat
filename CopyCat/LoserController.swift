//
//  LoserController.swift
//  CopyCat
//
//  Created by Qiana Partee on 4/19/25.
//

import UIKit

class GameOverControllerL: UIViewController {
    
    @IBOutlet weak var playAgain: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didPushPlayAgain1(_ sender: UIButton) {
        print("Pressed Play again!")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let tabBC = storyboard.instantiateViewController(withIdentifier: "tabBarController")
        tabBC.modalPresentationStyle = .fullScreen
        present(tabBC, animated: true, completion: nil)
    }
    
}
