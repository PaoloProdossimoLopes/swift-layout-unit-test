//
//  MainViewController.swift
//  SwiftUnitLayoutTestTests
//
//  Created by Paolo Prodossimo Lopes on 18/02/22.
//

import XCTest
import UIKit

@testable import SwiftUnitLayoutTest

final class MainViewControllerTest: XCTestCase {
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    var vc: MainViewController!
    
    override func setUp() {
        super.setUp()
        guard let taskVC = storyboard.instantiateViewController(withIdentifier: "MainViewController") as? MainViewController else {
            XCTFail("Could not instantiate TasksViewController")
            return
        }
        vc = taskVC
        vc.loadViewIfNeeded()
    }
    
    func test() {
        let hasTopConstraint = vc.view.constraints.contains(where: { constraint -> Bool in
                return ((constraint.firstItem as? UITableView) == vc.tableView) &&
                    (constraint.firstAnchor == vc.tableView.topAnchor) &&
                    ((constraint.secondItem as? UILayoutGuide) == vc.view.safeAreaLayoutGuide) &&
                    (constraint.secondAnchor == vc.view.safeAreaLayoutGuide.topAnchor) &&
                    (constraint.relation == .equal) &&
                    constraint.multiplier == 1.0 &&
                    constraint.constant == 0 &&
                    constraint.isActive == true
            })
            XCTAssertTrue(hasTopConstraint)
            XCTAssertTrue(vc.view.constraints.contains(where: { constraint -> Bool in
                return ((constraint.firstItem as? UITableView) == vc.tableView) &&
                    (constraint.firstAnchor == vc.tableView.bottomAnchor) &&
                    ((constraint.secondItem as? UILayoutGuide) == vc.view.safeAreaLayoutGuide) &&
                    (constraint.secondAnchor == vc.view.safeAreaLayoutGuide.bottomAnchor) &&
                    (constraint.relation == .equal) &&
                    constraint.multiplier == 1.0 &&
                    constraint.constant == 0 &&
                    constraint.isActive == true
            }))
            XCTAssertTrue(vc.view.constraints.contains(where: { constraint -> Bool in
                return ((constraint.firstItem as? UITableView) == vc.tableView) &&
                    (constraint.firstAnchor == vc.tableView.leadingAnchor) &&
                    ((constraint.secondItem as? UILayoutGuide) == vc.view.safeAreaLayoutGuide) &&
                    (constraint.secondAnchor == vc.view.safeAreaLayoutGuide.leadingAnchor) &&
                    (constraint.relation == .equal) &&
                    constraint.multiplier == 1.0 &&
                    constraint.constant == 0 &&
                    constraint.isActive == true
            }))
            XCTAssertTrue(vc.view.constraints.contains(where: { constraint -> Bool in
                return ((constraint.firstItem as? UITableView) == vc.tableView) &&
                    (constraint.firstAnchor == vc.tableView.trailingAnchor) &&
                    ((constraint.secondItem as? UILayoutGuide) == vc.view.safeAreaLayoutGuide) &&
                    (constraint.secondAnchor == vc.view.safeAreaLayoutGuide.trailingAnchor) &&
                    (constraint.relation == .equal) &&
                    constraint.multiplier == 1.0 &&
                    constraint.constant == 0 &&
                    constraint.isActive == true
            }))

    }
    
    
}
