//
//  PostCardView.swift
//  LinkedInClone
//
//  Created by Sai Lakshmi on 9/24/22.
//

import SwiftUI

// SocialView is for like, comment, share, send section
struct SocialView {
    var ids: Int
    var image: String
    var title: String
}
var socialView: [SocialView] = [
    .init(ids: 0, image: "hand.thumbsup", title: "Like"),
    .init(ids: 1, image: "text.bubble", title: "Comment"),
    .init(ids: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(ids: 3, image: "paperplane.fill", title: "Send")
]

let samplePostData = PostModel(id: 1, image: "0", title: "Jungle Works", followers: 346, profile: "00")

struct PostCardView: View {
    var data: PostModel
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all)
            
            HStack() {
                Image(data.profile)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 70, height: 70, alignment: .leading)
                VStack(alignment: .leading) {
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            Text("Looking for a new course on iOS with swift UI, you are already at great place.")
                .padding(.horizontal)
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(data: samplePostData)
    }
}
