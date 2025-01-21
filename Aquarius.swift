//
//  Aquarius.swift
//  ProjectBirth
//
//  Created by Student on 12/6/24.
//

import SwiftUI

struct Aquarius: View {
    @State var birthdayDate = Date()
    @Binding var day: Int
    @Binding var month: Int
    @Binding var year: Int
    @Binding var hour: Int
    @Binding var minute: Int
    
    var body: some View {
        Text("Hey Aquarius! Here are some more things about you:")
    }
}
#Preview {
    Aquarius(day: .constant(1), month: .constant(1), year: .constant(1), hour: .constant(1), minute: .constant(1))
}
