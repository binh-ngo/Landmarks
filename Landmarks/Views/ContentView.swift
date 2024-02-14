//
//  ContentView.swift
//  Landmarks
//
//  Created by Binh Ngo on 2/13/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Turtle Rock overlooks Cub Creek Road as it winds through the monument. From long-time settlers to brief passers-by, many of us like to name what we see around us. This towering outcropping of Entrada Sandstone, the same tye of rock that forms arches in Arches National Park, is known as Turtle Rock.")
            }
            .padding()
            Spacer()
        }
    }
}


#Preview {
    ContentView()
}
