//
//  HomeScreenView.swift
//  LinkedInClone
//
//  Created by Sai Lakshmi on 9/26/22.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack(spacing: 20) {
            ProfileAndPostView()
            PostView()
        }
        
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
