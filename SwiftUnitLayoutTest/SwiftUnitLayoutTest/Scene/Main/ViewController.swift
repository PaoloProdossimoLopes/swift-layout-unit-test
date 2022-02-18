//
//  ViewController.swift
//  SwiftUnitLayoutTest
//
//  Created by Paolo Prodossimo Lopes on 18/02/22.
//

import UIKit

final class MainViewController: UINavigationController {
    
    //MARK: - OUTLETS
    @IBOutlet weak private(set) var titleUILabelOutlet: UILabel?
    @IBOutlet weak private(set) var subtitleUILabelOutlet: UILabel?
    @IBOutlet weak private(set) var openSecondUIButtonOutlet: UIButton?
    
    //MARK: - ACTIONS
    @IBAction func openSecondUIButttonAction(_ sender: Any) {
        let controller = SecondViewController()
        self.pushViewController(controller, animated: true)
    }
}

