//
//  FlowerListView.swift
//  Colorado Flower Guide
//
//  Created by Nancy Yoder on 11/25/22.
//

import SwiftUI

struct FlowerListView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredFlowers: [Flower] {
        modelData.flowers.filter { flower in
            (!showFavoritesOnly || flower.isFavorite)
        }
    }

    
    var body: some View {
//        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(filteredFlowers) { flower in
                    NavigationLink {
                        FlowerDetailView(flower: flower)
                    } label: {
                        RowView(flower: flower)
                    }
                }
            }.navigationBarBackButtonHidden(true)
             .navigationTitle("")
             .navigationBarHidden(true)
    }
}

struct FlowerListView_Previews: PreviewProvider {
    static var previews: some View {
        FlowerListView()
            .environmentObject(ModelData())
    }
}
