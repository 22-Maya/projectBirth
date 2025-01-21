//
//  ContentView.swift
//  ProjectBirth
//
//  Created by Student on 11/12/24.
//
import SwiftUI
struct ContentView: View {
    @State var showMainApp = false
    var body: some View {
        NavigationView {
            if !showMainApp {
                WelcomeView(showMainApp: $showMainApp)
                    .navigationTitle("Welcome")
            } else {
                MainAppView(day: .constant(1), month: .constant(1), year: .constant(1), hour: .constant(1), minute: .constant(1))
                    .navigationTitle("Project Birth")
            }
        }
        .onAppear {
            // After the user enters their birthday, set `showMainApp` to `true`
            // to trigger the navigation to the main app view
            showMainApp = true
        }
    }
}

#Preview {
    ContentView()
}

extension Color {
   init(hex: Int, opacity: Double = 1) {
       self.init(
           .sRGB,
           red: Double((hex >> 16) & 0xff) / 255,
           green: Double((hex >> 08) & 0xff) / 255,
           blue: Double((hex >> 00) & 0xff) / 255,
           opacity: opacity
       )
   }
}



