//
//  FlowerDetailView.swift
//  Colorado Flower Guide
//
//  Created by Nancy Yoder on 11/25/22.
//

import SwiftUI

struct FlowerDetailView: View {
    var flower: Flower
    
    var body: some View {
        VStack{
            
            BackgroundView(image: flower.backgroundImage)
                .frame(height: 100)
            
            ImageView(image: flower.image)
                .offset(y: -110)
                .padding(.bottom, -200.0)
            
            VStack(alignment: .leading){
                
                Spacer()
                
                Text(flower.name)
                    .font(.title)
                
                Text(flower.binomial)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Divider()
                
                Text(flower.description)
                
            }.frame(width: 300.0)
        }
    }
}

struct FlowerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FlowerDetailView(flower: flowers[0])
    }
}
