//
//  PostData.swift
//  H4xor News
//
//  Created by Aimee Arost on 12/23/20.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

//We need the Identifiable protocol to use the Struct inside list and to know how to order each item
struct Post: Decodable, Identifiable {
//    Identifiable protocol requires id, but objectID is the same so this is how to get around it
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
//The NetworkManager will then decode this information.
