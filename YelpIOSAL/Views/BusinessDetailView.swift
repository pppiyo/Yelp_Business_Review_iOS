//
//  BusinessDetailView.swift
//  YelpIOSAL
//
//  Created by Amy Lee on 11/23/22.
//

import SwiftUI

struct BusinessDetailView: View {
    var business: Business
    
    var body: some View {
        ScrollView {
            MapView(coordinate: business.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImageView(image: business.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(business.name)
                    .font(.title)

                HStack {
                    Text(business.park)
                    Spacer()
                    Text(business.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(business.name)")
                    .font(.title2)
                Text(business.description)
            }
            .padding()
        }
        .navigationTitle(business.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BusinessDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessDetailView(business: businesses[0])
    }
}
