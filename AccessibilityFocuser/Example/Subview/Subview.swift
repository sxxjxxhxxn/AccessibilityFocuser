//
//  Subview.swift
//  AccessibilityFocuser
//
//  Created by jaehun on 11/8/25.
//

import SwiftUI

struct Subview: View {
    let title: String
    let focusType: TestFocus
    @AccessibilityFocusState var focus: TestFocus?
    
    var body: some View {
        Text(title)
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.black)
            }
            .accessibilityElement(children: .combine)
            .subscribeFocusEvent($focus, for: focusType)
    }
}
