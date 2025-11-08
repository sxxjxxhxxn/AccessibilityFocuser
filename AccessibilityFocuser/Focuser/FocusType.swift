//
//  FocusType.swift
//  AccessibilityFocuser
//
//  Created by jaehun on 11/8/25.
//

import SwiftUI
import Combine

public protocol FocusType: Hashable, Sendable {
    static var keyPath: KeyPath<EnvironmentValues, AnyPublisher<Self?, Never>> { get }
}

public protocol FocusEventKey: EnvironmentKey {
    associatedtype Focus: FocusType
    
    static var defaultValue: AnyPublisher<Focus?, Never> { get }
}
