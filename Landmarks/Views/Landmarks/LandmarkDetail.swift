//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Binh Ngo on 2/14/24.
//
// LANDMARK DETAILS VIEW
import SwiftUI

struct LandmarkDetail: View {
//    declares modelData is of type ModelData
//    @Environment is a wrapper used to access values that are provided externally. Source is from ModelData.swift
    @Environment(ModelData.self) var modelData
    
    var landmark: Landmark
    
//    computes the index of the landmark within the modelData.landmarks array
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    var body: some View {
        //  Bindable creates a two way binding to modelData. $ symbol is used with variables of State, Binding, ObservedObject wrappers while @ is used for the wrappers themselves. A bindable is similar to passing down props
        @Bindable var modelData = modelData
        ScrollView {
//         Map view that shows the location of the landmark based on coordinates
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
//          Landmark image view
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
//           Creates a vertical stack with all related information
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
