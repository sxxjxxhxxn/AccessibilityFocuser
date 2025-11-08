//
//  ContentView.swift
//  AccessibilityFocuser
//
//  Created by jaehun on 11/8/25.
//

import SwiftUI
import Combine

struct ContentView: View, FocusPublisher {
    let focusEvent = PassthroughSubject<TestFocus?, Never>()
    
    var body: some View {
        VStack(spacing: 8) {
            HStack(spacing: 8) {
                Subview(title: "A", focusType: .A)
                
                Button { sendFocusEvent(.A) }
                    label: {
                        Text("Set Focus to A")
                            .frame(height: 100)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 1)
                            }
                    }
            }
            
            HStack(spacing: 8) {
                Subview(title: "B", focusType: .B)
                
                Button { sendFocusEvent(.B) }
                    label: {
                        Text("Set Focus to B")
                            .frame(height: 100)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 1)
                            }
                    }
            }
            
            HStack(spacing: 8) {
                CView()
                
                Button { sendFocusEvent(.C) }
                    label: {
                        Text("Set Focus to C")
                            .frame(height: 100)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 1)
                            }
                    }
            }
        }
        .padding()
        .environment(\.testFocusEvent, focusEvent.eraseToAnyPublisher())
    }
}
