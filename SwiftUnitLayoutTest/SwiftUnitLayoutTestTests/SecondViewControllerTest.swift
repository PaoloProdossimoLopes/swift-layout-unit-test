//
//  SecondViewControllerTest.swift
//  SwiftUnitLayoutTestTests
//
//  Created by Paolo Prodossimo Lopes on 18/02/22.
//

import XCTest
import UIKit

@testable import SwiftUnitLayoutTest

final class SecondViewControllerTest: XCTestCase {
    
    func test_ViewController_LoadView_ContainsValidConstraints() {
        let vc = SecondViewController()
        
        //TOP:
        let constraint = vc.view.constraints.contains { ctr -> Bool in
            var conditions: Bool {
                ((ctr.firstItem as? UILabel) == vc.titleUILabel) &&
                ((ctr.secondItem as? UILayoutGuide) == vc.view.safeAreaLayoutGuide) &&
                (ctr.secondAnchor == vc.view.safeAreaLayoutGuide.topAnchor) &&
                (ctr.firstAnchor == vc.titleUILabel.topAnchor) &&
                (ctr.relation == .equal) &&
                (ctr.multiplier == 1.0) &&
                (ctr.constant == 30) &&
                (ctr.isActive == true)
            }
            return conditions
        }
        XCTAssertTrue(constraint)
        
        //LEADING
        XCTAssertTrue(vc.view.constraints.contains(where: { ctr -> Bool in
            return ((ctr.firstItem as? UILabel) == vc.titleUILabel) &&
            (ctr.firstAnchor == vc.titleUILabel.leadingAnchor) &&
            (ctr.secondAnchor == vc.view.leadingAnchor) &&
            (ctr.relation == .equal) &&
            (ctr.multiplier == 1.0) &&
            (ctr.constant == 20) &&
            (ctr.isActive == true)
        }))
        
        //TRAILLING
    }
    
//    NOTE: Enable if table view fill all bounds
//    func testTableViewCoversWholeView() {
//        XCTAssertEqual(vc.view.bounds, vc.tableView.frame)
//    }
    
}
