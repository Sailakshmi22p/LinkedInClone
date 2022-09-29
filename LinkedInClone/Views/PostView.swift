//
//  PostView.swift
//  LinkedInClone
//
//  Created by Sai Lakshmi on 9/26/22.
//

import SwiftUI

var postData: [PostModel] = [
    .init(id: 0, image: "0", title: "iNeuron", followers: 4066, profile: "00"),
    .init(id: 1, image: "1", title: "Learnyst", followers: 2345, profile: "01"),
    .init(id: 2, image: "2", title: "Synopsys inc", followers: 1235, profile: "02"),
    .init(id: 3, image: "3", title: "Skill-Lync", followers: 908, profile: "03"),
    .init(id: 4, image: "4", title: "Intel", followers: 1234, profile: "04"),
    .init(id: 5, image: "5", title: "HP", followers: 567, profile: "05"),
    .init(id: 6, image: "6", title: "JungleWorks", followers: 346, profile: "00")
    ]

struct PostView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                ForEach(postData, id: \.id) { data in
                    PostCardView(data: data)
                    HStack(alignment: .center, spacing: 30) {
                        ForEach(socialView, id: \.ids) { item in
                            VStack {
                                Image(systemName: item.image)
                                Text(item.title)
                            }
                            .foregroundColor(.black.opacity(0.8))
                            .font(.subheadline)
                        } .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
