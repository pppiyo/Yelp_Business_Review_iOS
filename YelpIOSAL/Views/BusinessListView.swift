//
//  ResultListView.swift
//  YelpIOSAL
//
//  Created by Amy Lee on 11/23/22.
//

import SwiftUI

struct BusinessListView: View {
    var body: some View {
        NavigationView {
            List(businesses) { landmark in
                NavigationLink {
                    BusinessDetailView(business: landmark)
                } label: {
                    BusinessRowView(business: landmark)
                }
            }
            .navigationBarTitle("Results", displayMode: .automatic)
            
            
        }
    }
}

struct BusinessListView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessListView()
    }
}
