//
//  CoverView.swift
//  Colorado Flower Guide
//
//  Created by Nancy Yoder on 12/5/22.
//

import SwiftUI

struct CoverView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView(){
            ZStack{
                Image("coverPhoto")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    Text("COLORADO")
                        .font(.title)
                        .foregroundColor(Color.white)
                    Text("WILDFLOWERS")
                        .font(.title)
                        .foregroundColor(Color.white)
                    Text("😚✌️")
                        .font(.title)
                        .foregroundColor(Color.white)
                    Spacer()
                    NavigationLink(destination: FlowerListView()) {
                        Text("Let's Go")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.all, 12.0)
                            .background(Color.pink)
                    }
                    Spacer()
                }
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView()
    }
}
