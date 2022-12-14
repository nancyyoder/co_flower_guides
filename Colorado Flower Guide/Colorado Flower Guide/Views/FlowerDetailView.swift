//
//  FlowerDetailView.swift
//  Colorado Flower Guide
//
//  Created by Nancy Yoder on 11/25/22.
//

import SwiftUI

struct FlowerDetailView: View {
    @EnvironmentObject var modelData: ModelData
    var flower: Flower
    
    var flowerIndex: Int {
        modelData.flowers.firstIndex(where: { $0.id == flower.id })!
    }
    
    var body: some View {
        ScrollView{
            VStack{
                BackgroundView(image: flower.backgroundImage)
                    .padding(.top, -55.0)
                    .frame(
                      minWidth: 0,
                      maxWidth: .infinity,
                      minHeight: 0,
                      maxHeight: .infinity,
                      alignment: .topLeading
                    )
                
                ImageView(image: flower.image)
                    .padding(.vertical, -145.0)
                
                VStack (alignment: .leading){
                    
                    Spacer()
                    
                    HStack{
                        Text(flower.name)
                            .font(.title)

                        FavoriteButtonView(isSet: $modelData.flowers[flowerIndex].isFavorite)
                    }
                    
                    Text(flower.binomial)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text(flower.description)
                    
                }
                .padding([.top, .leading], 3.0)
            }
        }
    }
}

struct FlowerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FlowerDetailView(flower: ModelData().flowers[3])
            .environmentObject(ModelData())
    }
}
