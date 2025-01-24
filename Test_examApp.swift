//
//  Test_examApp.swift
//  Test exam
//
//  Created by Ingride Youadeu on 2024-12-12.
//
import Firebase
import FirebaseFirestore
import SwiftUI

@main
struct FirebaseTabAppApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

