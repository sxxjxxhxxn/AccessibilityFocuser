//
//  FocusPublisher.swift
//  AccessibilityFocuser
//
//  Created by jaehun on 11/8/25.
//

import Foundation
import Combine

public protocol FocusPublisher {
    associatedtype Focus: FocusType
    
    var focusEvent: PassthroughSubject<Focus?, Never> { get }
}

public extension FocusPublisher {
    func sendFocusEvent(_ focus: Focus?, delay: TimeInterval = .zero) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) { [focusEvent] in
            focusEvent.send(focus)
        }
    }
}
