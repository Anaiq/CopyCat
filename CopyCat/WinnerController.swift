//
//  WinnerController.swift
//  CopyCat
//
//  Created by Qiana Partee on 4/19/25.
//

import UIKit

class GameOverControllerW: UIViewController {
    

    @IBOutlet weak var wPlayAgain: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.hidesBackButton = true
    }
    
    @IBAction func didPushPlayAgain(_ sender: UIButton) {
        print("Pressed play again!")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let tabBC = storyboard.instantiateViewController(withIdentifier: "tabBarController")
        tabBC.modalPresentationStyle = .fullScreen
        present(tabBC, animated: true, completion: nil)
    }
   
}
