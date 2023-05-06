//
//  PostList.swift
//  BamaTest
//
//  Created by Benyamin Mokhtarpour on 5/6/23.
//

import Foundation
import SwiftUI

struct PostList: View {
    @StateObject var vm = ViewModel.PostList()
    
    var body: some View {
        List{
            ForEach(vm.posts){post in
                NavigationLink(destination: PostView(post: post)){
                    HStack{
                        Text("\(post.title)")
                    }

                }
            }
        }
        .task {
            await vm.getPosts()
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Posts")
        
    }
}
struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
