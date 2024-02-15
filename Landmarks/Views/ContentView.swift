//
//  ContentView.swift
//  Landmarks
//
//  Created by Binh Ngo on 2/13/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        LandmarksList()
    }
}


#Preview {
    ContentView()
        .environment(ModelData())
}
