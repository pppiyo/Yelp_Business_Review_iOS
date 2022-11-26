//
//  ContentView.swift
//  YelpIOSAL
//
//  Created by Amy Lee on 11/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
//            Section {
                SearchFormView()
//            }
            
//            Section {
                BusinessListView()
//            }
        }
        
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

