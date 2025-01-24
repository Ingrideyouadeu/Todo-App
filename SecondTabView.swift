//
//  SecondTabView.swift
//  Test exam
//
//  Created by Ingride Youadeu on 2024-12-12.
//

import SwiftUI
import Firebase


struct SecondTabView: View {
    @State private var dataList: [String] = []

    var body: some View {
        VStack {
            Text("Stored Data")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .padding()

            List(dataList, id: \.self) { item in
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                    Text(item)
                        .font(.body)
                        .foregroundColor(.black)
                }
                .padding(.vertical, 5)
                .background(Color(UIColor.systemGray6))
                .cornerRadius(8)
            }
            .onAppear {
                fetchFromFirebase()
            }

            Spacer()
        }
        .background(Color(UIColor.systemBackground))
    }

    func fetchFromFirebase() {
        let db = Firestore.firestore()
        db.collection("userInputs").getDocuments { (snapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                dataList = snapshot?.documents.compactMap { $0["input"] as? String } ?? []
            }
        }
    }
}
