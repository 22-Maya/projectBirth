//
//  AriesView.swift
//  ProjectBirth
//
//  Created by Student on 12/6/24.
//
import SwiftUI
struct AriesView: View {
    @State var birthdayDate = Date()
    @Binding var day: Int
    @Binding var month: Int
    @Binding var year: Int
    @Binding var hour: Int
    @Binding var minute: Int
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Rectangle()
                        .frame(height: 0)
                        .background(.ultraThinMaterial)
                    Text("Here are some more things about you:")
                        .font(.system(size: 20))
                    Divider()
                    Section {
                        Text("You are a Fire Sign")
                            .font(.system(size: 30))
                            .padding(3)
                        Text("The fire signs: Aries, Leo, and Sagittarius are known for being passionate, dynamic, and temperamental. Leos are also said to be natural leaders, hard-working, and loyal.")
                            .font(.system(size: 19))
                            .padding([.bottom], 6)
                    }
                    Image("aqaurius") // Fixed typo in the image name (was .aqaurius)
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    Section {
                        Text("Personality Traits")
                            .font(.system(size: 20))
                         Text("Strengths: Courageous, determined, confident, enthusiastic, optimistic, honest, passionate")
                         Text("Weaknesses: Impatient, moody, short-tempered, impulsive, aggressive")
                         Text("Aries likes: Comfortable clothes, taking on leadership roles, physical challenges, individual sports")
                         Text("Aries dislikes: Inactivity, delays, work that does not use one's talents")
                            .padding([.bottom], 5)
                    }
                    
                    Section {
                        Text("General Character")
                            .font(.system(size: 20))
                        Text("Aries are driven by a desire to prove themselves and their strength. They have high energy, and are competitive and ambitious. They naturally take charge because they are good at initiating new projects. They can also be impatient, but are naturally active and don’t like to waste time. While Aries like competition, they don’t like to play games. They are highly self-aware, have strong opinions and are always ready to defend them.")
                            .padding([.trailing, .leading, .bottom], 5)
                    }
                    
                    Spacer()
                }
                .background(Color(hex: 0xee6b6e))
                .navigationTitle(Text("Hey Aries!"))  // Main navigation title
                .navigationBarTitleDisplayMode(.automatic) // Default title display mode
                .toolbarBackground(
                    Color(hex: 0xf18284), // Deeper background color for the navigation bar
                    for: .navigationBar
                )
                .toolbarBackground(.visible, for: .navigationBar) // Ensure background visibility
                //.foregroundColor(.white)
            }
        }
    }
}
#Preview {
    AriesView(day: .constant(1), month: .constant(1), year: .constant(1), hour: .constant(1), minute: .constant(1))
}
