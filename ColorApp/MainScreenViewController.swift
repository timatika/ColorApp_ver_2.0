//
//  MainScreenViewController.swift
//  ColorApp
//
//  Created by timatika on 05.11.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setBackgroundColor(_ screenColor: UIColor)
}

class MainScreenViewController: UIViewController {
    
    @IBOutlet var displayScreen: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
       // settingsVC.colorView.backgroundColor = displayScreen.backgroundColor
        settingsVC.delegate = self
    }
}

// MARK - SettingsViewControllerDelegate

extension MainScreenViewController: SettingsViewControllerDelegate {
    func setBackgroundColor(_ screenColor: UIColor) {
        displayScreen.backgroundColor = screenColor
    }
}


