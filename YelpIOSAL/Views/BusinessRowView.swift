//
//  BusinessRowView.swift
//  YelpIOSAL
//
//  Created by Amy Lee on 11/23/22.
//

import SwiftUI

struct BusinessRowView: View {
    var business: Business

    var body: some View {
        HStack {
            business.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(business.name)

            Spacer()
        }
    }
}

struct BusinessRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BusinessRowView(business: businesses[0])
            BusinessRowView(business: businesses[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
