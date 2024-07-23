//
//  WebView.swift
//  H4X0R News
//
//  Created by Иван Семикин on 23/07/2024.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let urlString else { return }
        guard let url = URL(string: urlString) else { return }
        
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

#Preview {
    WebView()
}
