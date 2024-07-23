//
//  ContentView.swift
//  H4X0R News
//
//  Created by Иван Семикин on 23/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(posts) { post in
                Text(post.title)
            }
            .navigationTitle("H4X0R News")
        }
    }
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Bonjour"),
    Post(id: "3", title: "Hola")
]

#Preview {
    ContentView()
}
