//
//  FirstModalView.swift
//  ModalModalWebViewReloadAutomatically
//
//  Created by Takuya Aso on 2025/04/15.
//

import SwiftUI

struct FirstModalView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var isPresented = false

    var body: some View {
        NavigationStack {
            ScrollView {
                Button {
                    isPresented = true
                } label: {
                    Text("Present WebView")
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 120)

                Spacer()
            }
            .navigationTitle("First Modal View")
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
        .fullScreenCover(isPresented: $isPresented) {
            WebView()
        }
    }
}

#Preview {
    FirstModalView()
}
