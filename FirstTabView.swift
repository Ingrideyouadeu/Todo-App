//
//  SubmitButton.swift
//  Test exam
//
//  Created by Ingride Youadeu on 2024-12-12.
//

import SwiftUI
import SwiftUI

struct FirstTabView: View {
    @State private var userInput: String = ""

    var body: some View {
        VStack {
            Text("Enter your information")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding(.top)

            TextField("Type something...", text: $userInput)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .padding([.leading, .trailing], 20)
                .font(.body)
                .autocapitalization(.none)
                .disableAutocorrection(true)

            SubmitButton(userInput: $userInput) // Pass userInput as a binding to the SubmitButton

            Spacer()
        }
        .background(Color(UIColor.systemBackground)) // Adaptive background color
        .edgesIgnoringSafeArea(.bottom) // Ignore the bottom space for a seamless design
    }
}
