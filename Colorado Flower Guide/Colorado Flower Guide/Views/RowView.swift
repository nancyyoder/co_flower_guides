//
//  RowView.swift
//  Colorado Flower Guide
//
//  Created by Nancy Yoder on 11/16/22.
//

import SwiftUI

struct RowView: View {
    var flower: Flower
    
    var body: some View {
        HStack{
            flower.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(flower.name)
            Spacer()
        }
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(flower: flowers[0])
            .previewLayout(.fixed(width: 300, height: 70))
        RowView(flower: flowers[1])
            .previewLayout(.fixed(width: 300, height: 70))
        RowView(flower: flowers[2])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
