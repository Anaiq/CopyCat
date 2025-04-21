//
//  RulesViewController.swift
//  CopyCat
//
//  Created by Qiana Partee on 4/18/25.
//

import UIKit

class RulesViewController: UIViewController {

    @IBOutlet weak var speedSwitch: UISwitch!
    @IBOutlet weak var easyButton: UIButton!
    @IBOutlet weak var hardButton: UIButton!
    @IBOutlet weak var rulesTextView: UITextView!
    
    @IBOutlet weak var slowButton: UIImageView!
    @IBOutlet weak var fastButton2: UIImageView!
    @IBOutlet weak var fastButton1: UIImageView!
    
    private var rulesAnSettings = RulesAndSettings(difficulty: .easy, speed: .normal)
    
    
    var rules = RulesAndSettings(difficulty: .easy, speed:.normal)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slowButton.tintColor = .systemYellow
        fastButton1.tintColor = .lightGray
        fastButton2.tintColor = .lightGray
        easyButton.tintColor = .systemYellow
        speedSwitch.isOn = false
        setSwitch()
        // Do any additional setup after loading the view.

        rulesTextView.text = rulesAnSettings.gameRules
    }
    
    
    @IBAction func difficultySetting(_sender: UIButton) {
        easyButton.isSelected = false
        hardButton.isSelected = false
        
        _sender.isSelected = true
        print("\( String(describing: _sender.titleLabel) ) Button Selected.")
        
        easyButton.tintColor = easyButton.isSelected ? .systemYellow : .lightGray
        
        hardButton.tintColor = hardButton.isSelected ? .systemYellow : .lightGray
    }
    
    
    @IBAction func setSwitchSpeed(_ sender: UISwitch) {
        
        if sender.isOn {
            print("fast selected.")
            RulesAndSettings.selectedSpeed = .fast
            print("\(RulesAndSettings.selectedSpeed)")
        } else {
            print("normal selected.")
            RulesAndSettings.selectedSpeed = .normal
            print("\(RulesAndSettings.selectedSpeed)")
        }
        slowButton.tintColor = sender.isOn ? .lightGray : .systemYellow
        fastButton1.tintColor = sender.isOn ? .systemYellow : .lightGray
        fastButton2.tintColor = sender.isOn ? .systemYellow : .lightGray

    }
    
    func   setSwitch() {
        speedSwitch.onTintColor = .systemYellow       // Color of the switch when it's ON (background)
        speedSwitch.thumbTintColor = .white          // Color of the circle (thumb)
        speedSwitch.tintColor = .darkGray
    }
    
}
