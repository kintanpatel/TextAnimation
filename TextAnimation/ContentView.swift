//
//  ContentView.swift
//  TextAnimation
//
//  Created by kintan on 01/05/24.
//

import SwiftUI

struct ContentView: View {
    private let letters = Array("Hello, Kintan")
    @State private var dragAmount = CGSize.zero
    @State private var isEnable = false
    
    var body: some View {
        HStack(spacing : 0) {
            ForEach(0..<letters.count,id: \.self){ num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(isEnable ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.default.delay(Double(num)/20), value: dragAmount)
            }
        }.gesture(DragGesture().onChanged{
            dragAmount = $0.translation
        }.onEnded({ _ in
            dragAmount = .zero
            isEnable.toggle()
        }))
        
    }
}

#Preview {
    ContentView()
}
