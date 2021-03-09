//
//  ActivityIndicator.swift
//  StateManagement_iOSDevelopersMX_Demo
//
//  Created by Pedro Rojas on 05/03/21.
//

import UIKit
import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    var style: UIActivityIndicatorView.Style
    var isLoading: Bool

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        isLoading ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

