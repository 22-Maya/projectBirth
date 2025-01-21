import SwiftUI

struct AquariusView: View {
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
                        Text("You are an Air Sign")
                            .font(.system(size: 30))
                            .padding(3)
                        Text("The air signs: Gemini, Libra, and Aquarius are known for being intellectual, communicative, and social. Aquarius is considered to be the most humanitarian sign, dedicated to making the world a better place.")
                            .font(.system(size: 19))
                            .padding([.bottom], 6)
                    }
                    Image("aqaurius") // Fixed typo in the image name (was .aqaurius)
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    Section {
                        Text("Personality Traits")
                            .font(.system(size: 20))
                        Text("Strengths: Progressive, original, independent, humanitarian")
                        Text("Weaknesses: Runs from emotional expression, temperamental, uncompromising, aloof")
                        Text("Aquarius likes: Fun with friends, risky business, fighting for causes, intellectual conversations.")
                        Text("Aquarius dislikes: Limitations, broken promises, being lonely, dull or boring situations.")
                            .padding([.bottom], 5)
                    }
                    
                    Section {
                        Text("General Character")
                            .font(.system(size: 20))
                        Text("Aquarius is the sign different from the rest of the zodiac and people born with their Sun in it feel special. This makes them eccentric and energetic in their fight for freedom, or at times shy and quiet, afraid to express their true personality. In both cases they are deep thinkers and highly intellectual people who love to fight for idealistic causes. They are able to see people without prejudice and this makes them truly special. Although they can easily adapt to the energy that surrounds them, Aquarius representatives have a deep need to have some time alone and away from everything in order to restore power.")
                            .padding([.trailing, .leading, .bottom], 5)
                    }
                    
                    Spacer()
                }
                .background(Color(hex: 0x085d76))
                .navigationTitle("Hey Aquarius!") // Main navigation title
                .navigationBarTitleDisplayMode(.automatic) // Default title display mode
                .toolbarBackground(
                    Color(hex: 0x0da6ba), // Deeper background color for the navigation bar
                    for: .navigationBar
                )
                .toolbarBackground(.visible, for: .navigationBar) // Ensure background visibility
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    AquariusView(day: .constant(1), month: .constant(1), year: .constant(1), hour: .constant(1), minute: .constant(1))
}
