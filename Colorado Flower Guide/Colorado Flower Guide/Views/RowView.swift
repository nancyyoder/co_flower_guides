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
            Text(flower.name)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(flower: flowers[0])
    }
}
