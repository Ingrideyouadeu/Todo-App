//
//  SubmitView.swift
//  Test exam
//
//  Created by Ingride Youadeu on 2024-12-12.
//
import SwiftUI
import Firebase
struct SubmitButton: View {
    @Binding var userInput: String // Accept the input as a Binding

    var body: some View {
        Button(action: {
            if !userInput.isEmpty {
                saveToFirebase(data: userInput)
            }
        }) {
            Text("Submit")
                .font(.title3)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .padding(.horizontal, 30)
                .shadow(radius: 10)
        }
        .padding(.bottom, 20)
    }

    func saveToFirebase(data: String) {
        // Your Firebase saving logic goes here.
        // Example:
        let db = Firestore.firestore()
        db.collection("userInputs").addDocument(data: ["input": data]) { error in
            if let error = error {
                print("Error writing document: \(error)")
            } else {
                print("Document successfully written!")
            }
        }
    }
}
