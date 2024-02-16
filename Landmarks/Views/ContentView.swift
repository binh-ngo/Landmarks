//
//  ContentView.swift
//  Landmarks
//
//  Created by Binh Ngo on 2/13/24.
//

import SwiftUI

// similar to App.tsx react file. Takes the two main views, list and featured, and creates tabs for each 
struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)


            LandmarksList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}


#Preview {
    ContentView()
        .environment(ModelData())
}
