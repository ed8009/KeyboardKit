//
//  CGRect+Valid.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-01-23.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation

extension Optional where Wrapped == String {

    // MARK: Emptiness
    var isBlank: Bool {
        if let unwrapped = self {
            return unwrapped.isEmpty
        } else {
            return true
        }
    }

    /// Safely unwraps optional `String`. Returns `nil` value for an empty `String`.
    /// - Returns: `String` value or `nil`
    var notEmptyString: String? {
        isBlank ? nil : self
    }

    /// Safely unwraps optional `String`. Returns an empty `String` in case of `nil` value.
    /// - Returns: `String` value or "".
    func unwrap() -> String {
        if let unwrapped = self {
            return unwrapped
        } else {
            return ""
        }
    }

}
