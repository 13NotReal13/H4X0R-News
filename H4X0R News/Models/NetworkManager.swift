//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Иван Семикин on 23/07/2024.
//

import Foundation

final class NetworkManager {
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                    return
                }
                
                if let data {
                    let decoder = JSONDecoder()
                    do {
                        let results = try decoder.decode(Results.self, from: data)
                    } catch {
                        print(error)
                    }
                }
            }
            task.resume()
        }
    }
}
