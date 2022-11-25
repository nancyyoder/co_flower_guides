//
//  FlowerListView.swift
//  Colorado Flower Guide
//
//  Created by Nancy Yoder on 11/25/22.
//

import SwiftUI

struct FlowerListView: View {
    var body: some View {
        NavigationView{
            List(flowers) { flower in
                NavigationLink {
                    FlowerDetailView(flower: flower)
                } label: {
                    RowView(flower: flower)
                }
            }
            .navigationTitle("Flowers")
        }
    }
}

struct FlowerListView_Previews: PreviewProvider {
    static var previews: some View {
        FlowerListView()
    }
}
