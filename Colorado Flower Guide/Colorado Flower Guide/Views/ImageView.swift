//
//  ImageView.swift
//  Colorado Flower Guide
//
//  Created by Nancy Yoder on 11/16/22.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("columbine")
            .resizable()
            .frame(width: 200, height: 320)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
