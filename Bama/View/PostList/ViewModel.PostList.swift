//
//  ViewModel.Post.swift
//  BamaTest
//
//  Created by Benyamin Mokhtarpour on 5/6/23.
//

import Foundation

extension ViewModel {
    
    
    @MainActor
    class PostList: ObservableObject {
           
        @Published var posts: [Model.Post] = []
        @Published var errorMessage = ""
        @Published var hasError = false
        

        func getPosts() async {
            guard let data = try?  await  APIService().getPosts() else {
                self.posts = []
                self.hasError = true
                self.errorMessage  = "Server Error"
                return
            }
            
            self.posts = data
            
        }
    }
    
}
