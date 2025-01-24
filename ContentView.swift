//
//  ContentView.swift
//  Test exam
//
//  Created by Ingride Youadeu on 2024-12-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                FirstTabView()
                    .tabItem {
                        Image(systemName: "pencil.circle.fill")
                            .font(.title)
                        Text("Input")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.blue)
                    }
                    .padding(.vertical, 10)

                SecondTabView()
                    .tabItem {
                        Image(systemName: "list.bullet.circle.fill")
                            .font(.title)
                        Text("Data List")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.green)
                    }
                    .padding(.vertical, 10)

                Text("Your Settings or Info Tab")
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                            .font(.title)
                        Text("Settings")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.orange)
                    }
                    .padding(.vertical, 10)
            }
            .accentColor(.blue) // Highlight color for selected tab
            .background(Color.white) // Clean white background for the TabView
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
