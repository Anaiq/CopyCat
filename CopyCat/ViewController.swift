//
//  ViewController.swift
//  CopyCat
//
//  Created by Qiana Partee on 4/17/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playButon: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didPushPlay(_ sender: UIButton) {
        print("Pushed the play button!!")
    }
    
}

