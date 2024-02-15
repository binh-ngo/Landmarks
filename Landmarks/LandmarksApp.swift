//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Binh Ngo on 2/13/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
//    @State establishes a source of truth that is passed down to the views that require it
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
