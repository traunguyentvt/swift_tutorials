//
//  ContentView.swift
//  Landmarks
//
//  Created by VT on 9/29/23.
//

import SwiftUI

struct ContentView: View {
    
    enum Tab {
        case featured
        case list
    }
    
    @State private var selection: Tab = .featured
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("Landmarks", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
