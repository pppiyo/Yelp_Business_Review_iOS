//
//  MainTabView.swift
//  YelpIOSAL
//
//  Created by Amy Lee on 11/23/22.
//

import SwiftUI
import MapKit

struct MainTabView: View {
    
    var business: Business
    
    var body: some View {
        
        TabView {
            BusinessDetailView(business: business)
                .tabItem {
                    Label("Business Detail", systemImage: "text.bubble.fill")}
            MapLocationView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                .tabItem {
                    Label("Map Location", systemImage: "location.fill")
                }
            ReviewsView()
                .tabItem {
                    Label("Reviews", systemImage: "message.fill")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(business: businesses[0])
    }
}
