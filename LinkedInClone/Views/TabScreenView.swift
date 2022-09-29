//
//  TabScreenView.swift
//  LinkedInClone
//
//  Created by Sai Lakshmi on 9/26/22.
//

import SwiftUI

struct TabScreenView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            MyNetworkScreenView()
                .tabItem {
                    Image(systemName: "Person2.fill")
                    Text("My Network")
                }
            Text("Post")
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    Text("MyNetwork")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("Notifications")
                }
            Text("Jobs")
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Jobs")
                }
        }
        
    }
}

struct TabScreenView_Previews: PreviewProvider {
    static var previews: some View {
        TabScreenView()
    }
}
