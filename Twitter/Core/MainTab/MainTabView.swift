//
//  MainTabView.swift
//  Twitter
//
//  Created by Chelsea Hannah on 8/12/22.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    var body: some View {
        //used to know what tab page you are on
        //the @State is needed as well for this selection
        TabView(selection: $selectedIndex) {
            FeedView()
            .onTapGesture {
                self.selectedIndex = 0
            }
            .tabItem {
                Image(systemName: "house")
            }.tag(0)
            
            ExploreView()
            .onTapGesture {
                self.selectedIndex = 1
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
            }.tag(1)
            
            NotificationsView()
            .onTapGesture {
                self.selectedIndex = 2
            }
            .tabItem {
                Image(systemName: "bell")
            }.tag(2)
            
            MessagesView()
            .onTapGesture {
                self.selectedIndex = 3
            }
            .tabItem {
                Image(systemName: "envelope")
            }.tag(3)
            
        }
       
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
