//
//  CurrencyFormatterTest.swift
//  BankeyUnitTests
//
//  Created by Caleb Danielsen on 13.05.2023.
//

import Foundation
import XCTest

@testable import Bankey

class CurrencyFormatterTest: XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreakDollarsIntoCents() {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() {
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "$929,466.23")
    }
    
    func testZeroDollarsFormatted() {
        let result = formatter.dollarsFormatted(0.00)
        XCTAssertEqual(result, "$0.00")
    }
}
