//
//  ContentView.swift
//  H4X0R News
//
//  Created by Иван Семикин on 23/07/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationStack {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                            .frame(width: 32)
                            .multilineTextAlignment(.leading)
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R News")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]

#Preview {
    ContentView()
}
