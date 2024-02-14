//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Binh Ngo on 2/14/24.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) {landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarksList()
}
