//
//  MainApp View.swift
//  ProjectBirth
//
//  Created by Student on 12/3/24.
//

import SwiftUI

struct MainAppView: View {
    @State var birthdayDate = Date()
    @Binding var day: Int
    @Binding var month: Int
    @Binding var year: Int
    @Binding var hour: Int
    @Binding var minute: Int
    
    
    var body: some View {
        NavigationStack {
            Form {
                Text(verbatim: "Birthday: \(month)/\(day)/\(year) \(hour):\(minute)")
                Section ("Now showing your birth chart") {
                    Text("Zodiac Sign: \(getZodiacSign())")
                }
                Section ("What are the Zodiac Signs?"){
                    Text("There are 12 zodiac signs, and each sign has its own strengths and weaknesses, its own specific traits, desires and attitude towards life and people. By analyzing the projection of the position of planets, and the Sun and the Moon on the Ecliptic at the moment of birth. Astrology can give us a glimpse of a person's basic characteristics, preferences, flaws and fears.")
                    .background(Color(hex: 0xADD8E6))
                    .padding(0)
                }
            }
            .navigationTitle("Here Are Your Results...") // Custom font size for navigation title
                //.navigationBarTitleDisplayMode(.inline)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
            
            let zodiac = getZodiacSign()
                       
           //Aquarius button
            if (zodiac == "Aquarius") {
                NavigationLink(destination: AquariusView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
                Text("Learn more about your zodiac sign")
                   .padding(30)
                   .background(Color.blue)
                   .foregroundColor(.white)
                   .cornerRadius(8)
                }
            }
                       
           //Pisces button
           else if  (zodiac == "Pisces") {
               NavigationLink(destination: PiscesView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
                   Text("Learn more about your zodiac sign")
                       .padding(30)
                       .background(Color.blue)
                       .foregroundColor(.white)
                       .cornerRadius(8)
               }
           }
                       
           //Aries button
           else if  (zodiac == "Aries") {
               NavigationLink(destination: AriesView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
               Text("Learn more about your zodiac sign")
                   .padding(30)
                   .background(Color.blue)
                   .foregroundColor(.white)
                   .cornerRadius(8)
               }
           }


               //Taurus button
               else if  (zodiac == "Taurus") {
                   NavigationLink(destination: TaurusView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
                       Text("Learn more about your zodiac sign")
                           .padding(30)
                           .background(Color.blue)
                           .foregroundColor(.white)
                           .cornerRadius(8)
                   }
                }


               //Gemini button
               else if  (zodiac == "Gemini") {
                           NavigationLink(destination: GeminiView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
                               Text("Learn more about your zodiac sign")
                                   .padding(30)
                                   .background(Color.blue)
                                   .foregroundColor(.white)
                                   .cornerRadius(8)
                           }
                       }


               //Cancer button
               else if  (zodiac == "Cancer") {
                           NavigationLink(destination: CancerView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
                               Text("Learn more about your zodiac sign")
                                   .padding(30)
                                   .background(Color.blue)
                                   .foregroundColor(.white)
                                   .cornerRadius(8)
                           }
                       }


               //Leo button
               else if  (zodiac == "Leo") {
                           NavigationLink(destination: LeoView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
                               Text("Learn more about your zodiac sign")
                                   .padding(30)
                                   .background(Color.blue)
                                   .foregroundColor(.white)
                                   .cornerRadius(8)
                           }
                       }


               //Virgo button
               else if  (zodiac == "Virgo") {
                           NavigationLink(destination: VirgoView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
                               Text("Learn more about your zodiac sign")
                                   .padding(30)
                                   .background(Color.blue)
                                   .foregroundColor(.white)
                                   .cornerRadius(8)
                           }
                       }


               //Libra button
               else if  (zodiac == "Libra") {
                           NavigationLink(destination: LibraView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
                               Text("Learn more about your zodiac sign")
                                   .padding(30)
                                   .background(Color.blue)
                                   .foregroundColor(.white)
                                   .cornerRadius(8)
                           }
                       }


               //Scorpio button
               else if  (zodiac == "Scorpio") {
                           NavigationLink(destination: ScorpioView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
                               Text("Learn more about your zodiac sign")
                                   .padding(30)
                                   .background(Color.blue)
                                   .foregroundColor(.white)
                                   .cornerRadius(8)
                           }
                       }


               //Sagittarius button
               else if  (zodiac == "Sagittarius") {
                           NavigationLink(destination: SagittariusView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
                               Text("Learn more about your zodiac sign")
                                   .padding(30)
                                   .background(Color.blue)
                                   .foregroundColor(.white)
                                   .cornerRadius(8)
                           }
                       }


               //Capricorn button
               else if  (zodiac == "Capricorn") {
                           NavigationLink(destination: CapricornView(day: $day, month: $month, year: $year, hour: $hour, minute: $minute)) {
                               Text("Learn more about your zodiac sign")
                                   .padding(30)
                                   .background(Color.blue)
                                   .foregroundColor(.white)
                                   .cornerRadius(8)
                           }
                       }

            
        }
    }
    
    func loadBirthday() {
        let userDefaults = UserDefaults.standard
        if let savedBirthday = userDefaults.object(forKey: "birthday") as? Date {
            birthdayDate = savedBirthday
        }
    }
    
    func getFormattedBirthday() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy hh:mm a"
        
        let formattedDate = formatter.string(from: birthdayDate)
        
        return formattedDate
    }
    
    // printing out the users zodiac sun sign
    func getZodiacSign() -> String {
        switch (month, day) {
        case (1, 18...31), (2, 1...17):
            return "Aquarius"
        case (2, 19...29), (3, 1...20):
            return "Pisces"
        case (3, 21...31), (4, 1...19):
            return "Aries"
        case (4, 20...30), (5, 1...20):
            return "Taurus"
        case (5, 21...31), (6, 1...20):
            return "Gemini"
        case (6, 21...30), (7, 1...22):
            return "Cancer"
        case (7, 23...31), (8, 1...22):
            return "Leo"
        case (8, 23...31), (9, 1...22):
            return "Virgo"
        case (9, 23...30), (10, 1...22):
            return "Libra"
        case (10, 23...31), (11, 1...21):
            return "Scorpio"
        case (11, 22...30), (12, 1...21):
            return "Sagittarius"
        default:
            return "Capricorn"
        }
    }
}

#Preview {
    MainAppView(day: .constant(22), month: .constant(12), year: .constant(2008), hour: .constant(9), minute: .constant(15))
}
