//
//  ContentView.swift
//  H4xor News
//
//  Created by Aimee Arost on 12/23/20.
//

import SwiftUI

struct ContentView: View {
    //    to listen to the "published" posts, we are creating an object from network manager class.
    //    The observedobject makes it listen.
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            //            these posts come from the published posts in the Network Manager
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4XOR NEWS")
            
        }
        //        Every content view has onAppear like viewdidload
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola"),
//]
