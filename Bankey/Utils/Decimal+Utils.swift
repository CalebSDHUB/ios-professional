//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Caleb Danielsen on 13.05.2023.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
