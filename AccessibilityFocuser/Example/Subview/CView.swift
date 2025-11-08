//
//  CView.swift
//  AccessibilityFocuser
//
//  Created by jaehun on 11/8/25.
//

import SwiftUI

struct CView: View {
    @AccessibilityFocusState var focus: TestFocus?
    
    var body: some View {
        Text("C")
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
            .subscribeFocusEvent($focus, for: .C)
    }
}
