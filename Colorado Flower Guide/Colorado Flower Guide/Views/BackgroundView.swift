//
//  BackgroundView.swift
//  Colorado Flower Guide
//
//  Created by Nancy Yoder on 11/16/22.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Image("rockyMountains")
            .resizable()
            .frame(width: 360, height: 300)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
