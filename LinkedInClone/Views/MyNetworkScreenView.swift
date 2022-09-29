//
//  MyNetworkScreen.swift
//  LinkedInClone
//
//  Created by Sai Lakshmi on 9/24/22.
//

import SwiftUI

var networkData: [NetworkModel] = [
    .init(id: 0, name: "Marry", position: "SDE at Paytm", mutuals: 34, image: "00"),
    .init(id: 1, name: "Peter", position: "Assistant Manager", mutuals: 45, image: "01"),
    .init(id: 2, name: "Jenny", position: "SDE at Ginger ", mutuals: 67, image: "02"),
    .init(id: 3, name: "Sara", position: "open to work", mutuals: 103, image: "03"),
    .init(id: 4, name: "Kia", position: "GET at HCL", mutuals: 12, image: "04"),
    .init(id: 5, name: "Shristi", position: "Student", mutuals: 78, image: "05"),
    .init(id: 6, name: "Rachel", position: "intern at iNeuron", mutuals: 90, image: "00"),
    .init(id: 7, name: "John", position: "HR at Intel", mutuals: 34, image: "01"),
    .init(id: 8, name: "Tiya", position: "purchase Engineer", mutuals: 50, image: "02"),
    .init(id: 9, name: "Pheobe", position: "Product Manager", mutuals: 86, image: "03"),
    .init(id: 10, name: "Monica", position: "Data Analyst", mutuals: 55, image: "04"),
    .init(id: 11, name: "Joe", position: "Software Development intern", mutuals: 42, image: "05"),
    .init(id: 12, name: "Charel", position: "SDE-II ", mutuals: 30, image: "00"),
    .init(id: 13, name: "Chandler", position: "Mobile Developer", mutuals: 71, image: "01"),
    .init(id: 14, name: "Max", position: "QA", mutuals: 95, image: "02"),
    .init(id: 15, name: "Nancy", position: "Frontend Developer", mutuals: 18, image: "03")

]

struct MyNetworkScreenView: View {
    var body: some View {
        VStack {
            SearchBarView()
            
            HStack {
                Text("Manage my network")
                    .font(.body)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding(.horizontal)
            
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all) //precaution
            
            HStack {
                Text("Invitations")
                    .font(.body)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
            } .padding(.horizontal)
            
            Divider()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                ForEach(networkData, id: \.id) { data in
                    InvitationView(data: data)
                    Divider()
                }
            }
        }
    }
}

struct MyNetworkScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MyNetworkScreenView()
    }
}
