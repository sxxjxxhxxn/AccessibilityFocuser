//
//  TestFocus.swift
//  AccessibilityFocuser
//
//  Created by jaehun on 11/8/25.
//

import SwiftUI
import Combine

enum TestFocus {
    case A
    case B
    case C
}

extension TestFocus: FocusType {
    static var keyPath: KeyPath<EnvironmentValues, AnyPublisher<TestFocus?, Never>> { \.testFocusEvent }
}

struct TestFocusEventKey: FocusEventKey {
    static let defaultValue: AnyPublisher<TestFocus?, Never> = Just(nil).eraseToAnyPublisher()
}

extension EnvironmentValues {
    var testFocusEvent: AnyPublisher<TestFocus?, Never> {
        get { self[TestFocusEventKey.self] }
        set { self[TestFocusEventKey.self] = newValue }
    }
}
