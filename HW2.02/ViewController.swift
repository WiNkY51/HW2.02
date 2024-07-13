//
//  ViewController.swift
//  HW2.02
//
//  Created by Winky51 on 12.07.2024.
//

import UIKit

class ViewController: UIViewController {

    var enabledLight = 0
    
    @IBOutlet weak var trafficLightRedView: UIImageView!
    @IBOutlet weak var trafficLightYellowView: UIImageView!
    @IBOutlet weak var trafficLightGreenView: UIImageView!
    @IBOutlet weak var toggleTrafficLightsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightRedView.tintColor = .red
        trafficLightYellowView.tintColor = .yellow
        trafficLightGreenView.tintColor = .green
        
        trafficLightRedView.alpha = 0.2
        trafficLightYellowView.alpha = 0.2
        trafficLightGreenView.alpha = 0.2
        
        toggleTrafficLightsButton.setTitle("START", for: .normal)
        toggleTrafficLightsButton.backgroundColor = .lightGray
        toggleTrafficLightsButton.layer.cornerRadius = 10
    }

    @IBAction func toggleButtonDidTapt(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        
        switch enabledLight {
        case 1:
            enabledLight = 2
            trafficLightRedView.alpha = 0.2
            trafficLightYellowView.alpha = 1
        case 2:
            enabledLight = 3
            trafficLightYellowView.alpha = 0.2
            trafficLightGreenView.alpha = 1
        case 3:
            enabledLight = 1
            trafficLightGreenView.alpha = 0.2
            trafficLightRedView.alpha = 1
        default:
            enabledLight = 1
            trafficLightRedView.alpha = 1
        }
    }
}

