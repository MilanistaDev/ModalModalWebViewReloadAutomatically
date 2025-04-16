//
//  PresentWebButton.swift
//  ModalModalWebViewReloadAutomatically
//
//  Created by Takuya Aso on 2025/04/16.
//

import SwiftUI

struct PresentWebButton: View {
    @State private var isPresented = false

    var body: some View {
        Button {
            isPresented = true
        } label: {
            Text("Present WebView")
        }
        .fullScreenCover(isPresented: $isPresented) {
            SecondModalView()
        }
    }
}

#Preview {
    PresentWebButton()
}
