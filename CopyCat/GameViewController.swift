//
//  GameViewController.swift
//  CopyCat
//
//  Created by Qiana Partee on 4/18/25.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var replaySequenceButton: UIButton!
    
    @IBOutlet weak var replayIndex: UILabel!
    var replays = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func didPushReplayButton(_ sender: UIButton) {
        print("Pressed replay!")
        replays += 1
        if (replays > 3) {
//            alert(title: "You've ran out of replays")
            return
        }
    }
}
