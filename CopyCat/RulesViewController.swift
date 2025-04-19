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
    
    
    enum Speed {
        case fast
        case normal
        
        var speedMultiplier: Double {
            switch self {
            case .fast: return 1.5
            case .normal: return 1.0
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slowButton.tintColor = .systemYellow
        fastButton1.tintColor = .lightGray
        fastButton2.tintColor = .lightGray
        easyButton.tintColor = .systemYellow
        speedSwitch.isOn = false
        setSwitch()
        // Do any additional setup after loading the view.
        rulesTextView.text = "adfasdfasdfasdfal aldf a;lskdjfal;sk adslfkja ;sldfk a dflkaj d;flkajs;ldfk alsdkfj a;ldkfj lak flakdf al;kdf  alsdkf j;alk djf"
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
            setSpeed(speed: .fast)
        } else {
            print("normal selected.")
            setSpeed(speed: .normal)
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
    
    func setSpeed(speed: Speed) {
//        game.speedMultiplier = speedMultiplier
        print("speed selected")
    }

}
