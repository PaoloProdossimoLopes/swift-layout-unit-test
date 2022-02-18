//
//  ViewController.swift
//  SwiftUnitLayoutTest
//
//  Created by Paolo Prodossimo Lopes on 18/02/22.
//

import UIKit

final class MainViewController: UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak private var titleUILabelOutlet: UILabel?
    @IBOutlet weak private var subtitleUILabelOutlet: UILabel?
    @IBOutlet weak private var openSecondUIButtonOutlet: UIButton?
    
    //MARK: - LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }
    
    //MARK: - Helpers
    
    private func commonInit() {
        
    }
    
    //MARK: - ACTIONS
    @IBAction func openSecondUIButttonAction(_ sender: Any) {
        
    }
    
}

