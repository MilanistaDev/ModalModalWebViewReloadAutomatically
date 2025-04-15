//
//  SecondModalView.swift
//  ModalModalWebViewReloadAutomatically
//
//  Created by Takuya Aso on 2025/04/15.
//

import SwiftUI

struct SecondModalView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            WebView(url: "https://www.google.com")
                .navigationTitle("Second Modal View")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Text("Close")
                        }
                    }
                }
        }
    }
}

#Preview {
    SecondModalView()
}
