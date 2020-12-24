//
//  WebView.swift
//  H4xor News
//
//  Created by Aimee Arost on 12/23/20.
//

import Foundation
import WebKit
import SwiftUI

//This is creating the webviewer using UIKit
//This protocol conforms to UIViewRepresentable - allows a view that represents a UIKit view.
struct WebView: UIViewRepresentable {
    //    2 delgate methods necessary to conform to protocol UIViewRepresentable
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
