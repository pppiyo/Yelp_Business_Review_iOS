//
//  SearchFormView.swift
//  YelpIOSAL
//
//  Created by Amy Lee on 11/23/22.
//

import SwiftUI

struct SearchFormView: View {
    @State private var keyword: String = ""
    @State private var distance: Int = 10
    @State private var category: String = "Default"
    @State private var location: String = ""
    @State private var autoDetect: Bool = false
    @State private var showingLocation = true
    
    
    var body: some View {
        // business search
        NavigationView {
            Form {
                HStack {
                    Text("Keyword: ")
                    TextField("Required", text: $keyword).foregroundColor(.black)
                }
                
                HStack {
                    Text("Distance: ")
                    TextField("", value: $distance, formatter: NumberFormatter()).foregroundColor(.black)
                }
                
                HStack {
                    Text("Category: ")
                    Menu {
                        Button(action: {
                            category = "Default"
                        }, label: {
                            Text("Default")
                        })
                        
                        Button(action: {
                            category = "Arts and Entertainment"
                        }, label: {
                            Text("Arts and Entertainment")
                        })
                        
                        Button(action: {
                            category = "Health and Medical"
                        }, label: {
                            Text("Health and Medical")
                        })
                        
                        Button(action: {
                            category = "Hotels and Travel"
                        }, label: {
                            Text("Hotels and Travel")
                        })
                        
                        Button(action: {
                            category = "Food"
                        }, label: {
                            Text("Food")
                        })
                        
                        Button(action: {
                            category = "Professional Services"
                        }, label: {
                            Text("Professional Services")
                        })
                    } label: {
                        Label(
                            title: {Text("\(category)")},
                            icon: {}
                        ).foregroundColor(.blue)
                    }
                }
                
                if !autoDetect {
                    HStack {
                        Text("Location: ")
                        TextField("Required", text: $location).foregroundColor(.black)
                    }
                }
                
                Toggle("Auto-detect my location", isOn: $autoDetect.animation())
                
                HStack {
                    Spacer()
                    SubmitButton()
                    Spacer()
                    Spacer()
                    ClearButton()
                    Spacer()
                }
                
            }
            .foregroundColor(.secondary)
            .navigationBarTitle("Business Search")
            .navigationBarItems(trailing: Button(action: {
                print("Fetching json data")
            }, label: {
                Image(systemName: "calendar.badge.clock")
            }))
            
            
            
        }
    }
}

struct SearchFormView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFormView()
    }
}


struct SubmitButton: View {
    var body: some View {
        Button("Submit") {
            print("Button pressed!")
        }
        .buttonStyle(MyButtonStyle())
        .background(.red)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

struct ClearButton: View {
    var body: some View {
        Button("Clear") {
            print("Button pressed!")
        }
        .buttonStyle(MyButtonStyle())
        .background(.blue)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .frame(width: 120)
    }
}
