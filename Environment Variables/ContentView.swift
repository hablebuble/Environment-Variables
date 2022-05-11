//
//  ContentView.swift
//  Environment Variables
//
//  Created by Alexey Strelnikov on 10.05.2022.
//

import SwiftUI


struct ContentView: View {
   
    var body: some View {
        VStack(spacing: 20) {
            ColorSchemeSensitiveView() // <1>
            VStack(spacing: 20) {
                ColorSchemeSensitiveView() // <2>
                    .environment(\.colorScheme, .light)
                ColorSchemeSensitiveView() // <3>
            }
            .environment(\.colorScheme, .dark)
        }
    }
}

//struct ContentView: View {
//
//    @Environment(\.verticalSizeClass) private var verticalSizeClass
//
//    var body: some View {
//        if verticalSizeClass == .regular {
//            VStack {
//                Text("Андрей")
//                Text("Кристина")
//                Text("Роман")
//            }
//            .font(.headline)
//        } else {
//            HStack {
//                Text("Андрей")
//                Text("Кристина")
//                Text("Роман")
//            }
//            .font(.headline)
//        }
//
//    }
//}

//struct ContentView: View {
//    @Environment(\.colorScheme) private var colorScheme
//    @Environment(\.locale) private var locale
//    @Environment(\.calendar) private var calendar
//    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
//
//    var body: some View {
//        VStack {
//            Text(locale.description)
//            Text(calendar.description)
//            Text(horizontalSizeClass == .compact ? "Compact" : "Regular")
//            Text(colorScheme == .dark ? "Dark Mode" : "Light Mode")
//        }
//        .font(.headline)
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
