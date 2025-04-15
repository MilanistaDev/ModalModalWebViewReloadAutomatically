//
//  ContentView.swift
//  ModalModalWebViewReloadAutomatically
//
//  Created by Takuya Aso on 2025/04/14.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false

    var body: some View {
        VStack {
            Button {
                isPresented = true
            } label: {
                Text("Present FirstModalView")
            }
        }
        .padding()
        .fullScreenCover(isPresented: $isPresented) {
            FirstModalView()
        }
    }
}

#Preview {
    ContentView()
}
