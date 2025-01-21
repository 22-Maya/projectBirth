//
//  VirgoView.swift
//  ProjectBirth
//
//  Created by Student on 12/6/24.
//

import SwiftUI

struct VirgoView: View {
    @State var birthdayDate = Date()
    @Binding var day: Int
    @Binding var month: Int
    @Binding var year: Int
    @Binding var hour: Int
    @Binding var minute: Int
    
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .frame(height: 0)
                    .background(.ultraThinMaterial)
                Text("Here are some more things about you:")
                    .font(.system(size: 20))
                Divider()
                Spacer()
            }
                .background(Color(hex: 0x008000))
                .navigationTitle(Text("Hey Virgo!"))
        }
    }
}

#Preview {
    VirgoView(day: .constant(1), month: .constant(1), year: .constant(1), hour: .constant(1), minute: .constant(1))
}
