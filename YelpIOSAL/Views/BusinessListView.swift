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
            List(businesses) { business in
                NavigationLink {
                    BusinessDetailView(business: business)
                } label: {
                    BusinessRowView(business: business)
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
