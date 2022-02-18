//
//  SecondViewController.swift
//  SwiftUnitLayoutTest
//
//  Created by Paolo Prodossimo Lopes on 18/02/22.
//

import UIKit

final class SecondViewController: UIViewController {
    
    //MARK: - UI COMPONENTS
    private(set) lazy var titleUILabel: UILabel = {
        let label = UILabel()
        label.text = "SECOND TITLE LABEL"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }
    
    //MARK: - HELPERS
    private func commonInit() {
        configureViewHierarchy()
        configureConstraints()
    }
    
    private func configureViewHierarchy() {
        view.addSubview(titleUILabel)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            titleUILabel.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30
            ),
            titleUILabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleUILabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
    
}
