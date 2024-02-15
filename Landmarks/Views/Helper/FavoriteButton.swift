//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Binh Ngo on 2/15/24.
//

import SwiftUI

struct FavoriteButton: View {
//  Binding establishes a two-way connection from the current view (FaveBtn) and its parent view (LandmarkDetail)
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
