//
//  SearchBarView.swift
//  LinkedInClone
//
//  Created by Sai Lakshmi on 9/23/22.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack(alignment: .center) {
            Image("demo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
            // Search Bar
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 270, height: 30)
                .foregroundColor(.blue.opacity(0.2))
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                        Spacer()
                    }
                        .foregroundColor(.gray)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding()
                )
            
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 30, height: 30)
                .aspectRatio(contentMode: .fit)
        }
        .padding()
        
        
        
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
