//
//  WelcomeView.swift
//  ProjectBirth
//
//  Created by Student on 12/3/24.
//

import SwiftUI

// design welcome page
struct WelcomeView: View {
    @State private var birthdayDate = Date()
    @Binding var showMainApp: Bool
    @State private var day = 0
    @State private var month = 0
    @State private var year = 0
    @State private var hour = 0
    @State private var minute = 0

    var body: some View {
        VStack {
            NavigationStack {
                Form {
                    Section ("Please enter your date and time of birth") {
                        DatePicker("Birthday", selection: $birthdayDate, displayedComponents: [.date, .hourAndMinute])
                        Button("Save Birthday") {
                            saveBirthday()
                        }
                        
                        Button("Load Birthday") {
                            loadBirthday()
                        }
                        
                        NavigationLink(destination: MainAppView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
                            Text("Go to Main View")
                                .padding(8)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        .padding(2)
                    }
                }
                .navigationTitle("ProjectBirth!")
            }
        }
    }
    func saveBirthday() {
        let userDefaults = UserDefaults.standard
        userDefaults.set(birthdayDate, forKey: "birthday")
    }
    
    func loadBirthday() {
        let userDefaults = UserDefaults.standard
        if let savedBirthday = userDefaults.object(forKey: "birthday") as? Date {
            birthdayDate = savedBirthday
            extractDateComponents()
        }
    }
    func getFormattedBirthday() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy hh:mm a"
        
        let formattedDate = formatter.string(from: birthdayDate)
        
        return formattedDate
    }
    
    func extractDateComponents() {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day, .month, .year, .hour, .minute], from: birthdayDate)
        
        day = components.day ?? 0
        month = components.month ?? 0
        year = components.year ?? 0
        hour = components.hour ?? 0
        minute = components.minute ?? 0
    }
    
}

#Preview {
    WelcomeView(showMainApp: .constant(false))
}
