//
//  WebView.swift
//  ModalModalWebViewReloadAutomatically
//
//  Created by Takuya Aso on 2025/04/15.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: url) else {
            return
        }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
