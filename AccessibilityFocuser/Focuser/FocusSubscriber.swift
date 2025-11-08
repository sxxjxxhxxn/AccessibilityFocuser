//
//  FocusSubscriber.swift
//  AccessibilityFocuser
//
//  Created by jaehun on 11/8/25.
//

import SwiftUI
import Combine

public extension View {
    func subscribeFocusEvent<Focus: FocusType>(_ subscriber: AccessibilityFocusState<Focus?>.Binding, for focus: Focus?) -> some View {
        accessibilityFocused(subscriber, equals: focus)
            .modifier(FocusSubscriberModifier(subscriber: subscriber))
    }
}

private struct FocusSubscriberModifier<Focus: FocusType>: ViewModifier {
    @Environment(Focus.keyPath) var focusEvent: AnyPublisher<Focus?, Never>
    var subscriber: AccessibilityFocusState<Focus?>.Binding
    
    func body(content: Content) -> some View {
        content
            .onReceive(focusEvent) { focus in
                self.subscriber.wrappedValue = focus
            }
    }
}
