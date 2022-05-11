//
//  ColorSchemeSensetiveView.swift
//  Environment Variables
//
//  Created by Alexey Strelnikov on 10.05.2022.
//

import SwiftUI

struct ColorSchemeSensitiveView: View {
    @Environment(\.colorScheme) private var colorScheme
    var body: some View {
        Text(colorScheme == .dark ? "Dark" : "Light")
            .frame(width: 100, height: 100)
            .foregroundColor(colorScheme == .light ? .white : .black)
            .background(colorScheme == .light ? Color.black : Color.white)
            .cornerRadius(50)
            .font(.headline)
    }
}

struct ColorSchemeSensitiveView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSchemeSensitiveView()
    }
}
