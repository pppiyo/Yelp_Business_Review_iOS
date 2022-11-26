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


//            CircleImageView(image: business.imgURL)
//                .offset(y: -130)
//                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(business.name)
                    .font(.title)

                HStack {
                    Text("\(business.order)")
                    Text("\(business.name)")
                    Text("\(business.rating)")
//                    Spacer()
                    Text("\(business.distance)")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(business.name)")
                    .font(.title2)
                Text(business.rating)
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
